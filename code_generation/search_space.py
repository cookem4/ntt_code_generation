class Search_Space: 
    # These parameters set by running the test suite
    code_size = 0
    max_heap = 0
    max_stack = 0
    total_mem = 0
    runtime = 0

    # TODO worth collecting cache hit data?
    def run_test_suite(self):
        PROG_NAME = "./ntt_test" 
        bash_command_base = "make clean && make CFLAGS=\"-O2" 
        bash_command_build = bash_command_base  + " -D" + self.ntt_obj.dim_build_str             + "=" + str(dim)
        bash_command_build = bash_command_build + " -D" + self.ntt_obj.type_build_str            + "=" + str(self.ntt_obj.type_str)
        bash_command_build = bash_command_build + " -D" + self.ntt_obj.is_lut_build_str          + "=" + str(self.ntt_obj.is_lut)
        bash_command_build = bash_command_build + " -D" + self.ntt_obj.fixed_radix_build_str     + "=" + str(self.ntt_obj.fixed_radix)
        bash_command_build = bash_command_build + " -D" + self.ntt_obj.fixed_radix_build_str     + "=" + str(self.ntt_obj.fixed_radix)
        bash_command_build = bash_command_build + " -D" + self.ntt_obj.mixed_radix_build_str     + "=" + str(self.ntt_obj.mixed_radix)
        bash_command_build = bash_command_build + " -D" + self.ntt_obj.max_mixed_radix_build_str + "=" + str(self.ntt_obj.max_mixed_radix)
        bash_command_build = bash_command_build + " -D" + self.ntt_obj.is_parallel_build_str     + "=" + str(self.ntt_obj.is_parallel)
        if (self.ntt_obj.is_parallel == 1):
            bash_command_build = bash_command_build + " -fopenmp "

        # TODO finish test suite after build

    def __init__(self, type_str, is_lut, fixed_radix, max_mixed_radix, is_parallel, ntt_obj): 
        self.type_str = type_str 
        self.is_lut = is_lut 
        self.fixed_radix = fixed_radix 
        self.mixed_radix = 1 if fixed_radix == 0 else 0
        self.max_mixed_radix = max_mixed_radix 
        self.is_parallel = is_parallel 
        self.ntt_obj = ntt_obj

def build_search_space():
    # TODO might want to move these vectors into a file instead of looping over them
    # manually
    mixed_radix_range = [3, 5, 7, 11, 13]
    search_space_objs = [] 
    # Cross product of search space creates a set of NTT objects with certain
    # attributes
    NTT_TYPE = "TYPE_N2"
    for is_lut in [0, 1]:
        # TODO temp skip non-lut parallelization for failures
        if is_lut == 1:
            for is_parallel in [0, 1]:
                new_data_obj = Search_Space(NTT_TYPE, is_lut, 0, 1, is_parallel) 
                search_space_objs.append(new_data_obj) 
        else:
            new_data_obj = Search_Space(NTT_TYPE, is_lut, 0, 1, 0) 
            search_space_objs.append(new_data_obj) 
    NTT_TYPE = "TYPE_FAST"
    for is_lut in [0, 1]:
        for is_fixed_radix in [0, 1]:
            # Skip if is N2
            if (is_fixed_radix == 1):
                new_data_obj = Search_Space(NTT_TYPE, is_lut, 1, 2, 0) 
                search_space_objs.append(new_data_obj) 
            else:
                for max_mixed_radix in mixed_radix_range:
                    new_data_obj = Search_Space(NTT_TYPE, is_lut, 0, max_mixed_radix, 0) 
                    search_space_objs.append(new_data_obj) 

    return search_space_objs
