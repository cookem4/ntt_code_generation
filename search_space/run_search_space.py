
import subprocess

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
        self.code_size_instr_y = []
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
    small_range = range(10, 30, 10)
    DIM_LST = small_range
    NTT_TYPE_LST = ["TYPE_MTX", "TYPE_N2_1", "TYPE_N2_2", "TYPE_N2_3", "TYPE_FAST_FIXED", "TYPE_FAST_MIXED", "TYPE_FAST_FIXED_INPLACE", "TYPE_FAST_MIXED_INPLACE"]
    bash_command_base = "make clean && make CFLAGS=\"-O2"

    ntt_type_objs = []
    for ntt_type in NTT_TYPE_LST:
        new_data_obj = Ntt_Data(ntt_type)
        ntt_type_objs.append(new_data_obj)

    for dim in DIM_LST:
        for ntt_type in ntt_type_objs:
            ntt_type.dim_x.append(dim)
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
            bash_command = "ls massif* | ms_print"
            output = run_bash_command(bash_command)
            # TODO parse the ms_print output and assign to obj
            bash_command = "rm massif*"
            output = run_bash_command(bash_command)

            bash_command = "valgrind --tool=callgrind " + PROG_NAME
            output = run_bash_cmd(bash_command)
            # Parse the massif output
            bash_command = "ls callgrind* | callgrind_annotate"
            output = run_bash_command(bash_command)
            # TODO parse the callgrind anotate output and assign to obj
            bash_command = "rm callgrind*"
            output = run_bash_command(bash_command)

            # Check code size in B
            bash_command = "size ntt.o"
            output = run_bash_command(bash_command)
            # TODO parse output

            # Check code size in Assembly lines
            bash_command = "objdump -d -t ntt.o | awk '/ntt_impl$/,/^$/' | wc -l"
            output = run_bash_command(bash_command)
            # TODO parse output

            # Check runtime with flag
            bash_command_build = bash_command_build + " -DDO_TIME=1 \""
            # Compile with timing
            output = run_bash_cmd(bash_command)
            # Execute
            output = run_bash_cmd(PROG_NAME)
            # TODO parse output

    # Print as CSV
    headers = ["Dim", "Status", "Runtime", "Heap", "IR Cnt", "Code Size B", "Code size", "Instr"]


if __name__ == "__main__":
    main()
