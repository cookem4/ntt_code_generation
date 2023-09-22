
import subprocess

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
    small_range = range(10, 30, 10)
    DIM_LST = small_range
    NTT_TYPE_LST = ["TYPE_MTX", "TYPE_N2_1", "TYPE_N2_2", "TYPE_N2_3", "TYPE_FAST_FIXED", "TYPE_FAST_MIXED", "TYPE_FAST_FIXED_INPLACE", "TYPE_FAST_MIXED_INPLACE"]
    bash_command_base = "make clean && make CFLAGS=\"-O2"
    for dim in DIM_LST:
        for ntt_type in NTT_TYPE_LST:
            bash_command = bash_command_base + " -DDIM=" + str(dim) + " -DNTT_TYPE=" + ntt_type
            # TODO add this later
            '''
            if ntt_type == "TYPE_FAST_FIXED" or ntt_type == "TYPE_FAST_MIXED":
                bash_command = bash_command + " " + CHECK_STACK
            '''
            bash_command = bash_command + "\""
            # Compile the program
            output = run_bash_cmd(bash_command)
            # Run the program
            output = run_bash_cmd(PROG_NAME)
            if (output.find("PASS") != -1):
                print("N = " + str(dim) + " PASSED for NTT: " + ntt_type)
            else:
                print("N = " + str(dim) + " FAILED for NTT: " + ntt_type)
    # Tools:
    # valgrind --tool=cachegrind,massif,callgrind
    # Can then run callgrind_annotate for the given callgrind log
    # Stack profiling for recursive methods only: define CHECK_STACK

if __name__ == "__main__":
    main()
