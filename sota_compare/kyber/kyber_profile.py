 
import subprocess 
import pdb
import re
 
 
def run_bash_cmd(bash_command): 
    try: 
        # Run the command and capture the output and error 
        output = subprocess.check_output(bash_command, shell=True, universal_newlines=True, stderr=subprocess.STDOUT) 
         
        # Print the output 
        # print(output) 
        return output 
    except subprocess.CalledProcessError as e: 
        # If the command returns a non-zero exit code, it will raise a CalledProcessError 
        print(f"Command failed with exit code {e.returncode}:") 
        print(e.output) 
 
def main(): 
    PROG_NAME = "./kyber_test" 

    bash_command_base = "make clean && make CFLAGS=\"-O2" 
    bash_command = bash_command_base + "\"" 
    # Compile the program 
    output = run_bash_cmd(bash_command) 

    # Tools: 
    # valgrind --tool=cachegrind,massif,callgrind 
    # Can then run callgrind_annotate or ms_print for the given callgrind log 

    bash_command = "valgrind --tool=massif " + PROG_NAME 
    output = run_bash_cmd(bash_command) 
    # Parse the massif output 
    bash_command = "ls massif* | xargs -I {} ms_print {}" 
    output = run_bash_cmd(bash_command) 
    massif_pattern = r"(\d+)\s+([\d,]+)\s+([\d,]+)\s+([\d,]+)\s+([\d,]+)\s+([\d,]+)"
    # The last line looks like this:
    '''
    --------------------------------------------------------------------------------
      n        time(i)         total(B)   useful-heap(B) extra-heap(B)    stacks(B)
    --------------------------------------------------------------------------------
     10        206,103            2,376            2,320            56            0
    '''
    # We want the total(B) argument
    matches = re.findall(massif_pattern, output)
    # We care about third match, but want the max across the snapshots
    # peak_match = re.findall("([\d,]+)B.*ntt_impl", output)
    peak_match = re.findall("(\d+)\s+\(peak\)", output)
    # Find max manually 
    this_max = int(matches[0][2].replace(",","")) 
    for i in matches[1:-1]: 
        if int(i[2].replace(",","")) > this_max: 
            this_max = int(i[2].replace(",","")) 
    print("Max heap is ", this_max)
    bash_command = "rm massif*" 
    output = run_bash_cmd(bash_command) 

    bash_command = "valgrind --tool=callgrind " + PROG_NAME 
    output = run_bash_cmd(bash_command) 
    # Parse the massif output 
    bash_command = "ls callgrind* | xargs -I {} callgrind_annotate {}" 
    output = run_bash_cmd(bash_command) 
    matches = re.findall(r"([\d,]+).*ntt", output)
    print("Number of IRs is ", int(matches[0].replace(",","")))
    bash_command = "rm callgrind*" 
    output = run_bash_cmd(bash_command) 

    # Check code size in B 
    bash_command = "size ntt.o" 
    output = run_bash_cmd(bash_command) 
    matches_ntt = re.findall(r"\d+\s+\d+\s+\d+\s+(\d+)", output)
    bash_command = "size reduce.o" 
    output = run_bash_cmd(bash_command) 
    matches_reduce = re.findall(r"\d+\s+\d+\s+\d+\s+(\d+)", output)
    print("Code size is ", (int(matches_ntt[0]) + int(matches_reduce[0])))

    # Check runtime with flag 
    NUM_TIME_RERUN = 100
    running_sum = 0;
    bash_command_build = bash_command_base + " -DDO_TIME=1 \"" 
    # Compile with timing 
    output = run_bash_cmd(bash_command_build) 
    for i in range(NUM_TIME_RERUN):
        # Execute 
        output = run_bash_cmd(PROG_NAME) 
        matches = re.findall(r"TIME\:\s+(\d+)\s+us", output)
        running_sum = running_sum + int(matches[0])
    print("Runtime is ", running_sum / NUM_TIME_RERUN)

if __name__ == "__main__": 
    main() 
