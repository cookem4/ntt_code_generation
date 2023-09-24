 
import subprocess 
import pdb
import re
 
# Data container 
class Ntt_Data: 
    def __init__(self, type_str): 
        self.type_str = type_str 
        self.dim_data_x = [] 
        self.runtime_y = [] 
        self.heap_y = [] 
        self.ir_cnt_y = [] 
        self.stack_height_y = [] 
        self.code_size_B_y = [] 
        self.func_size_B_y = [] 
        self.prog_output = [] 
        self.exec_status_y = [] # Pass/fail 
 
 
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
    CHECK_STACK = "-DCHECK_STACK=1" 
    PROG_NAME = "./ntt_test" 
    # DIM_LST = range(4, 500, 10) + range(600, 2000, 100) + range(2500, 10500,1000) 
    # DIM_LST = range(4, 500, 10) + range(600, 2000, 100) 
    large_range = range(8, 6000, 2)
    DIM_LST = list(large_range)

    # Original List
    # NTT_TYPE_LST = ["TYPE_MTX", "TYPE_N2_1", "TYPE_N2_2", "TYPE_N2_3", "TYPE_FAST_FIXED", "TYPE_FAST_MIXED", "TYPE_FAST_FIXED_INPLACE", "TYPE_FAST_MIXED_INPLACE"] 
    # Expanded List
    # NTT_TYPE_LST = ["TYPE_MTX", "TYPE_N2_1", "TYPE_N2_2", "TYPE_N2_3", "TYPE_FAST_FIXED", "TYPE_FAST_MIXED", "TYPE_FAST_FIXED_INPLACE", "TYPE_FAST_MIXED_INPLACE", "TYPE_FAST_FIXED_INPLACE_LUT", "TYPE_FAST_MIXED_INPLACE_LUT", "TYPE_N2_4_LUT"] 
    # Only new items
    NTT_TYPE_LST = ["TYPE_FAST_FIXED_INPLACE_LUT", "TYPE_FAST_MIXED_INPLACE_LUT", "TYPE_N2_4_LUT"] 
    bash_command_base = "make clean && make CFLAGS=\"-O2" 
 
    ntt_type_objs = [] 
    for ntt_type in NTT_TYPE_LST: 
        new_data_obj = Ntt_Data(ntt_type) 
        ntt_type_objs.append(new_data_obj) 
        with open(ntt_type + "_data_sweep.csv", "a") as file:
            file.write("Dim,Status,Runtime,Heap,IR Cnt,Code Size B,Func Size B\n")
 
    for dim in DIM_LST: 
        for ntt_type in ntt_type_objs: 
            ntt_type.dim_data_x.append(dim) 
            bash_command_build = bash_command_base + " -DDIM=" + str(dim) + " -DNTT_TYPE=" + ntt_type.type_str 
            # TODO add this later 
            ''' 
            if ntt_type.type_str == "TYPE_FAST_FIXED" or ntt_type.type_str == "TYPE_FAST_MIXED": 
                bash_command = bash_command + " " + CHECK_STACK 
            ''' 
            bash_command = bash_command_build + "\"" 
            # Compile the program 
            output = run_bash_cmd(bash_command) 
            # Run the program 
            output = run_bash_cmd(PROG_NAME) 
            ntt_type.prog_output.append(output) 
            if (output.find("PASS") != -1): 
                ntt_type.exec_status_y.append("PASS") 
                print("N = " + str(dim) + " PASSED for NTT: " + ntt_type.type_str) 
            else: 
                ntt_type.exec_status_y.append("FAIL") 
                print("N = " + str(dim) + " FAILED for NTT: " + ntt_type.type_str) 
 
            # Tools: 
            # valgrind --tool=cachegrind,massif,callgrind 
            # Can then run callgrind_annotate or ms_print for the given callgrind log 
            # Stack profiling for recursive methods only: define CHECK_STACK 
 
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
            peak_match = re.findall("(\d+)\s+\(peak\)", output)
            # ntt_type.heap_y.append(int(matches[int(peak_match[0])][2].replace(",","")))
            # Find max manually 
            this_max = int(matches[0][2].replace(",","")) 
            for i in matches[1:-1]: 
                if int(i[2].replace(",","")) > this_max: 
                    this_max = int(i[2].replace(",","")) 
            ntt_type.heap_y.append(this_max)
            bash_command = "rm massif*" 
            output = run_bash_cmd(bash_command) 
 
            bash_command = "valgrind --tool=callgrind " + PROG_NAME 
            output = run_bash_cmd(bash_command) 
            # Parse the massif output 
            bash_command = "ls callgrind* | xargs -I {} callgrind_annotate {}" 
            output = run_bash_cmd(bash_command) 
            matches = re.findall(r"([\d,]+).*ntt_impl", output)
            ntt_type.ir_cnt_y.append(int(matches[0].replace(",","")))
            bash_command = "rm callgrind*" 
            output = run_bash_cmd(bash_command) 
 
            # Check code size in B 
            bash_command = "size ntt.o" 
            output = run_bash_cmd(bash_command) 
            matches = re.findall(r"\d+\s+\d+\s+\d+\s+(\d+)", output)
            ntt_type.code_size_B_y.append(int(matches[0]))
 
            # Check code size in Assembly lines 
            bash_command = "objdump -d -t ntt.o" 
            output = run_bash_cmd(bash_command) 
            matches1 = re.findall(r"([0-9A-Fa-f]+)\s+\<ntt_impl\>\:", output)
            matches2 = re.findall(r"([0-9A-Fa-f]+)\s+\<ntt_check\>\:", output)
            func_size = int(matches2[0], 16) - int(matches1[0], 16)
            ntt_type.func_size_B_y.append(func_size)
 
            # Check runtime with flag 
            bash_command_build = bash_command_build + " -DDO_TIME=1 \"" 
            # Compile with timing 
            output = run_bash_cmd(bash_command_build) 
            # Execute 
            output = run_bash_cmd(PROG_NAME) 
            matches = re.findall(r"TIME\:\s+(\d+)\s+us", output)
            ntt_type.runtime_y.append(int(matches[0]))

            # Write collected data to the CSV file so we don't lose it if
            # there's a runtime error
            with open(str(ntt_type.type_str) + "_data_sweep.csv", "a") as file:
                file.write(str(ntt_type.dim_data_x[-1]) + "," + \
                           str(ntt_type.exec_status_y[-1]) + "," + \
                           str(ntt_type.runtime_y[-1]) + "," + \
                           str(ntt_type.heap_y[-1]) + "," + \
                           str(ntt_type.ir_cnt_y[-1]) + "," + \
                           str(ntt_type.code_size_B_y[-1]) + "," + \
                           str(ntt_type.func_size_B_y[-1]) + "\n");
 
if __name__ == "__main__": 
    main() 
