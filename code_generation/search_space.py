
import subprocess
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


class Search_Space: 
    # These parameters set by running the test suite
    code_size = 0
    max_heap = 0
    total_mem = 0
    instr_ret = 0
    runtime = 0

    # TODO worth collecting cache hit data?
    def run_test_suite(self):
        PROG_NAME = "./ntt_test" 
        # bash_command_build = "make clean && make CFLAGS=\"-O0 -g" 
        bash_command_build = "make clean && make CFLAGS=\"-O3 " 
        if (self.is_omp):
            bash_command_build += " -fopenmp "
        if (self.is_pthread):
            bash_command_build += " -pthread "
        if (self.is_avx):
            bash_command_build += " -mavx2 "
        bash_command = bash_command_build + "\"" 
        print(bash_command)
        # Compile the program 
        output = run_bash_cmd(bash_command) 
        # Run the program 
        output = run_bash_cmd(PROG_NAME) 
        print(output)
        if (output.find("PASS") != -1): 
            print("PASSED for NTT: " + self.variant_name) 
        else: 
            print("FAILED for NTT: " + self.variant_name) 

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
        output = run_bash_cmd(bash_command) 

        # Skip callgrind if parallel
        if (not self.is_omp and not self.is_pthread):
            bash_command = "valgrind --tool=callgrind " + PROG_NAME 
            output = run_bash_cmd(bash_command) 
            # Parse the massif output 
            bash_command = "ls callgrind* | xargs -I {} callgrind_annotate {}" 
            output = run_bash_cmd(bash_command) 
            matches = re.findall(r"([\d,]+).*ntt_impl", output)
            self.instr_ret = int(matches[0].replace(",",""))
            bash_command = "rm callgrind*" 
            output = run_bash_cmd(bash_command) 
        else:
            self.instr_ret = int(0)

        # Check code size in B 
        bash_command = "size ntt_target.o" 
        output = run_bash_cmd(bash_command) 
        matches = re.findall(r"\d+\s+\d+\s+\d+\s+(\d+)", output)
        self.code_size = int(matches[0])

        # Check runtime with flag 
        NUM_TIME_RERUN = 10
        running_sum = 0;
        bash_command_build = bash_command_build + " -DDO_TIME=1 \"" 
        # Compile with timing 
        output = run_bash_cmd(bash_command_build) 
        for i in range(NUM_TIME_RERUN):
            # Execute 
            output = run_bash_cmd(PROG_NAME) 
            matches = re.findall(r"TIME\:\s+(\d+)\s+us", output)
            running_sum = running_sum + int(matches[0])
        self.runtime = (running_sum / NUM_TIME_RERUN)

    def __init__(self, arch_dict=None, type_str="TYPE_N2", is_lut=True, fixed_radix=False, max_mixed_radix=False, is_omp=False, is_avx=False, is_recursive=False, recursive_base_case=0, is_pthread=False, max_threads=None, separate_inv_impl=True): 
        self.type_str = type_str 
        self.is_lut = is_lut 
        self.fixed_radix = fixed_radix 
        self.mixed_radix = True if not fixed_radix else False
        self.max_mixed_radix = max_mixed_radix 
        self.is_avx = is_avx 
        self.is_avx512 = False if arch_dict is None else arch_dict["avx512"]
        self.is_avx2 = False if arch_dict is None else arch_dict["avx2"]
        self.is_omp = is_omp 
        # Note: pthread and omp are mutually exclusive
        self.is_pthread = is_pthread 
        self.max_threads = max_threads if max_threads is not None else arch_dict["num_threads"]
        self.is_recursive = is_recursive 
        self.recursive_base_case = recursive_base_case 
        # View code-size/performance tradeoff with separate
        # Forward and inverse implementations. To keep a common
        # Interface regardless use function interfaces
        self.separate_inv_impl = separate_inv_impl 
        self.variant_name = str(self.type_str) + \
                            "_LUT" + str(int(self.is_lut)) + \
                            "_F" + str(int(self.fixed_radix)) + \
                            "_MR" + str(self.max_mixed_radix) + \
                            "_P" + str(int(self.is_omp)) + \
                            "_AVX" + str(int(self.is_avx)) + \
                            "_R" + str(int(self.is_recursive)) + \
                            "_RB" + str(int(self.recursive_base_case)) + \
                            "_PT" + str(int(self.is_pthread)) + \
                            "_NT" + str(int(self.max_threads)) + \
                            "_DI" + str(int(self.separate_inv_impl))

def build_search_space(arch_dict):
    # TODO might want to move these vectors into a file instead of looping over them
    # manually
    mixed_radix_range = [3, 5, 7, 11, 13]
    recursive_base_case_range = [8, 16, 32, 64, 128, 256]
    search_space_objs = [] 
    # Cross product of search space creates a set of NTT objects with certain attributes
    '''
    NTT_TYPE = "TYPE_FAST"
    for is_lut in [False, True]:
        for recursive_base_case in recursive_base_case_range:
            # TODO cross this with AVX and OMP
            if not is_lut:
                for is_omp in [False, True]:
                    for is_avx in [False, True]:
                        new_data_obj = Search_Space(type_str=NTT_TYPE, \
                                                    is_lut=is_lut, \
                                                    fixed_radix=True, \
                                                    max_mixed_radix=2, \
                                                    is_omp=is_omp, \
                                                    is_avx=is_avx, \
                                                    is_recursive=True, \
                                                    recursive_base_case=recursive_base_case, \
                                                    separate_inv_impl=True) 
                        search_space_objs.append(new_data_obj) 
            else:
                new_data_obj = Search_Space(type_str=NTT_TYPE, \
                                            is_lut=is_lut, \
                                            fixed_radix=True, \
                                            max_mixed_radix=2, \
                                            is_omp=False, \
                                            is_avx=False, \
                                            is_recursive=True, \
                                            recursive_base_case=recursive_base_case, \
                                            separate_inv_impl=True) 
                search_space_objs.append(new_data_obj) 
    '''
    '''
    new_data_obj = Search_Space(type_str="TYPE_N2", is_pthread=True, max_threads=1)
    search_space_objs.append(new_data_obj)
    new_data_obj = Search_Space(type_str="TYPE_N2", is_pthread=True, max_threads=2)
    search_space_objs.append(new_data_obj)
    new_data_obj = Search_Space(type_str="TYPE_N2", is_pthread=True, max_threads=4)
    search_space_objs.append(new_data_obj)
    new_data_obj = Search_Space(type_str="TYPE_N2", is_pthread=True, max_threads=8)
    search_space_objs.append(new_data_obj)
    new_data_obj = Search_Space(type_str="TYPE_N2", is_pthread=True, max_threads=16)
    search_space_objs.append(new_data_obj)
    new_data_obj = Search_Space(type_str="TYPE_N2", is_omp=True, max_threads=1)
    search_space_objs.append(new_data_obj)
    new_data_obj = Search_Space(type_str="TYPE_N2", is_omp=True, max_threads=2)
    search_space_objs.append(new_data_obj)
    new_data_obj = Search_Space(type_str="TYPE_N2", is_omp=True, max_threads=4)
    search_space_objs.append(new_data_obj)
    new_data_obj = Search_Space(type_str="TYPE_N2", is_omp=True, max_threads=8)
    search_space_objs.append(new_data_obj)
    new_data_obj = Search_Space(type_str="TYPE_N2", is_omp=True, max_threads=16)
    search_space_objs.append(new_data_obj)
    new_data_obj = Search_Space(type_str="TYPE_N2")
    search_space_objs.append(new_data_obj)
    '''
    new_data_obj = Search_Space(type_str="TYPE_N2", arch_dict=arch_dict)
    search_space_objs.append(new_data_obj)
    '''
    for separate_inv_impl in [False, True]:
        NTT_TYPE = "TYPE_N2"
        for is_lut in [False, True]:
            for is_avx in [False, True]:
                # TODO temp skip non-lut parallelization for failures due to difficult access
                if is_lut:
                    # TODO temp skip omp with AVX due to not-found race-condition
                    if not is_avx:
                        for is_omp in [False, True]:
                            new_data_obj = Search_Space(type_str=NTT_TYPE, \
                                                        is_lut=is_lut, \
                                                        fixed_radix=False, \
                                                        max_mixed_radix=1, \
                                                        is_omp=is_omp, \
                                                        is_avx=is_avx, \
                                                        is_recursive=False, \
                                                        recursive_base_case=0, \
                                                        separate_inv_impl=separate_inv_impl) 
                            search_space_objs.append(new_data_obj) 
                else:
                    # OMP
                    new_data_obj = Search_Space(type_str=NTT_TYPE, \
                                                is_lut=is_lut, \
                                                fixed_radix=False, \
                                                max_mixed_radix=1, \
                                                is_omp=True, \
                                                is_avx=is_avx, \
                                                is_recursive=False, \
                                                recursive_base_case=0, \
                                                separate_inv_impl=separate_inv_impl) 
                    search_space_objs.append(new_data_obj) 
        NTT_TYPE = "TYPE_FAST"
        for is_recursive in [False, True]:
            for is_lut in [False, True]:
                if is_recursive:
                    for recursive_base_case in recursive_base_case_range:
                        # TODO cross this with AVX and OMP
                        if not is_lut:
                            for is_omp in [False, True]:
                                for is_avx in [False, True]:
                                    new_data_obj = Search_Space(type_str=NTT_TYPE, \
                                                                is_lut=is_lut, \
                                                                fixed_radix=True, \
                                                                max_mixed_radix=2, \
                                                                is_omp=is_omp, \
                                                                is_avx=is_avx, \
                                                                is_recursive=True, \
                                                                recursive_base_case=recursive_base_case, \
                                                                separate_inv_impl=separate_inv_impl) 
                                    search_space_objs.append(new_data_obj) 
                        else:
                            new_data_obj = Search_Space(type_str=NTT_TYPE, \
                                                        is_lut=is_lut, \
                                                        fixed_radix=True, \
                                                        max_mixed_radix=2, \
                                                        is_omp=False, \
                                                        is_avx=False, \
                                                        is_recursive=True, \
                                                        recursive_base_case=recursive_base_case, \
                                                        separate_inv_impl=separate_inv_impl) 
                            search_space_objs.append(new_data_obj) 
                else:
                    for is_fixed_radix in [False, True]:
                        if (is_fixed_radix):
                            new_data_obj = Search_Space(type_str=NTT_TYPE, \
                                                        is_lut=is_lut, \
                                                        fixed_radix=True, \
                                                        max_mixed_radix=2, \
                                                        is_omp=False, \
                                                        is_avx=False, \
                                                        is_recursive=False, \
                                                        recursive_base_case=0, \
                                                        separate_inv_impl=separate_inv_impl) 
                            search_space_objs.append(new_data_obj) 
                        else:
                            for max_mixed_radix in mixed_radix_range:
                                new_data_obj = Search_Space(type_str=NTT_TYPE, \
                                                            is_lut=is_lut, \
                                                            fixed_radix=False, \
                                                            max_mixed_radix=max_mixed_radix, \
                                                            is_omp=False, \
                                                            is_avx=False, \
                                                            is_recursive=False, \
                                                            recursive_base_case=0, \
                                                            separate_inv_impl=separate_inv_impl) 
                                search_space_objs.append(new_data_obj) 
    '''

    return search_space_objs
