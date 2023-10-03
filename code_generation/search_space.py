
import subprocess
import re

class Search_Space: 
    # These parameters set by running the test suite
    code_size = 0
    max_heap = 0
    total_mem = 0
    instr_ret = 0
    runtime = 0

    def run_bash_cmd(self, bash_command): 
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

    # TODO worth collecting cache hit data?
    def run_test_suite(self):
        PROG_NAME = "./ntt_test" 
        # bash_command_build = "make clean && make CFLAGS=\"-O0 -g" 
        bash_command_build = "make clean && make CFLAGS=\"-O3 " 
        if (self.is_parallel == 1):
            bash_command_build += " -fopenmp "
        bash_command = bash_command_build + "\"" 
        print(bash_command)
        # Compile the program 
        output = self.run_bash_cmd(bash_command) 
        # Run the program 
        output = self.run_bash_cmd(PROG_NAME) 
        print(output)
        if (output.find("PASS") != -1): 
            print("PASSED for NTT: " + self.variant_name) 
        else: 
            print("FAILED for NTT: " + self.variant_name) 

        # Tools: 
        # valgrind --tool=cachegrind,massif,callgrind 
        # Can then run callgrind_annotate or ms_print for the given callgrind log 

        '''
        bash_command = "valgrind --tool=massif " + PROG_NAME 
        output = self.run_bash_cmd(bash_command) 
        # Parse the massif output 
        bash_command = "ls massif* | xargs -I {} ms_print {}" 
        output = self.run_bash_cmd(bash_command) 
        massif_pattern = r"(\d+)\s+([\d,]+)\s+([\d,]+)\s+([\d,]+)\s+([\d,]+)\s+([\d,]+)"
        # The last line looks like this:
        # --------------------------------------------------------------------------------
        #   n        time(i)         total(B)   useful-heap(B) extra-heap(B)    stacks(B)
        # --------------------------------------------------------------------------------
        #  10        206,103            2,376            2,320            56            0
        # We want the total(B) argument
        matches = re.findall(massif_pattern, output)
        peak_match = re.findall("(\d+)\s+\(peak\)", output)
        # Find max manually 
        this_max = int(matches[0][2].replace(",","")) 
        for i in matches[1:-1]: 
            if int(i[2].replace(",","")) > this_max: 
                this_max = int(i[2].replace(",","")) 
        self.max_heap = this_max
        bash_command = "rm massif*" 
        output = self.run_bash_cmd(bash_command) 

        # Skip callgrind if openMP
        if (self.is_parallel == 0):
            bash_command = "valgrind --tool=callgrind " + PROG_NAME 
            output = self.run_bash_cmd(bash_command) 
            # Parse the massif output 
            bash_command = "ls callgrind* | xargs -I {} callgrind_annotate {}" 
            output = self.run_bash_cmd(bash_command) 
            matches = re.findall(r"([\d,]+).*ntt_impl", output)
            self.instr_ret = int(matches[0].replace(",",""))
            bash_command = "rm callgrind*" 
            output = self.run_bash_cmd(bash_command) 
        else:
            self.instr_ret = int(0)

        # Check code size in B 
        bash_command = "size ntt_target.o" 
        output = self.run_bash_cmd(bash_command) 
        matches = re.findall(r"\d+\s+\d+\s+\d+\s+(\d+)", output)
        self.code_size = int(matches[0])

        # Check runtime with flag 
        NUM_TIME_RERUN = 10
        running_sum = 0;
        bash_command_build = bash_command_build + " -DDO_TIME=1 \"" 
        # Compile with timing 
        output = self.run_bash_cmd(bash_command_build) 
        for i in range(NUM_TIME_RERUN):
            # Execute 
            output = self.run_bash_cmd(PROG_NAME) 
            matches = re.findall(r"TIME\:\s+(\d+)\s+us", output)
            running_sum = running_sum + int(matches[0])
        self.runtime = (running_sum / NUM_TIME_RERUN)
        '''

    def __init__(self, type_str, is_lut, fixed_radix, max_mixed_radix, is_parallel, separate_inv_impl): 
        self.type_str = type_str 
        self.is_lut = is_lut 
        self.fixed_radix = fixed_radix 
        self.mixed_radix = 1 if fixed_radix == 0 else 0
        self.max_mixed_radix = max_mixed_radix 
        self.is_parallel = is_parallel 
        # View code-size/performance tradeoff with separate
        # Forward and inverse implementations. To keep a common
        # Interface regardless use function interfaces
        self.separate_inv_impl = separate_inv_impl 
        self.variant_name = str(self.type_str) + "_LUT" + str(int(self.is_lut))  + "_F" + str(int(self.fixed_radix)) + "_MR" + str(self.max_mixed_radix) + "_P" + str(int(self.is_parallel)) + "_DI" + str(int(self.separate_inv_impl))

def build_search_space():
    # TODO might want to move these vectors into a file instead of looping over them
    # manually
    mixed_radix_range = [3, 5, 7, 11, 13]
    search_space_objs = [] 
    # Cross product of search space creates a set of NTT objects with certain attributes
    for separate_inv_impl in [False, True]:
        NTT_TYPE = "TYPE_N2"
        for is_lut in [False, True]:
            # TODO temp skip non-lut parallelization for failures due to difficult access
            if is_lut:
                # for is_parallel in [False, True]:
                for is_parallel in [False]:
                    new_data_obj = Search_Space(NTT_TYPE, is_lut, False, 1, is_parallel, separate_inv_impl) 
                    search_space_objs.append(new_data_obj) 
            else:
                new_data_obj = Search_Space(NTT_TYPE, is_lut, False, 1, 0, separate_inv_impl) 
                search_space_objs.append(new_data_obj) 
        NTT_TYPE = "TYPE_FAST"
        for is_lut in [False, True]:
            for is_fixed_radix in [False, True]:
                if (is_fixed_radix):
                    new_data_obj = Search_Space(NTT_TYPE, is_lut, True, 2, 0, separate_inv_impl) 
                    search_space_objs.append(new_data_obj) 
                else:
                    for max_mixed_radix in mixed_radix_range:
                        new_data_obj = Search_Space(NTT_TYPE, is_lut, False, max_mixed_radix, 0, separate_inv_impl) 
                        search_space_objs.append(new_data_obj) 

    return search_space_objs
