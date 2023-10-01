
import subprocess

class Search_Space: 
    type_build_str = "NTT_TYPE"
    is_lut_build_str = "LUT_BASED"
    fixed_radix_build_str = "FAST_FIXED"
    mixed_radix_build_str = "FAST_MIXED"
    max_mixed_radix_build_str = "FAST_MIXED"
    max_mixed_radix_build_str = "MAX_RADIX"
    is_parallel_build_str = "PARALLEL"
    separate_inv_impl_str = "SEPARATE_INV_DEF"

    # These parameters set by running the test suite
    code_size = 0
    max_heap = 0
    max_stack = 0
    total_mem = 0
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
        bash_command_build = "make clean && make CFLAGS=\"-O0 -g" 
        bash_command_build += " -D" + self.type_build_str            + "=" + str(self.type_str)
        bash_command_build += " -D" + self.is_lut_build_str          + "=" + str(int(self.is_lut))
        bash_command_build += " -D" + self.fixed_radix_build_str     + "=" + str(int(self.fixed_radix))
        bash_command_build += " -D" + self.mixed_radix_build_str     + "=" + str(int(self.mixed_radix))
        bash_command_build += " -D" + self.max_mixed_radix_build_str + "=" + str(self.max_mixed_radix)
        bash_command_build += " -D" + self.is_parallel_build_str     + "=" + str(int(self.is_parallel))
        bash_command_build += " -D" + self.separate_inv_impl_str     + "=" + str(int(self.separate_inv_impl))
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

        # TODO finish test suite after build

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
        self.variant_name = str(self.type_str) + "_LUT" + str(self.is_lut)  + "_F" + str(self.fixed_radix) + "_MR" + str(self.max_mixed_radix) + "_P" + str(self.is_parallel) + "_DI" + str(self.separate_inv_impl)

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
                for is_parallel in [False, True]:
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
