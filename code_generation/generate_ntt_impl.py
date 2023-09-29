import argparse
import numpy as np
import pdb

# Generate C code for the NTT based on the given input parameters.
# Note: although the mixed-radix implementation was seen to be slow, code generation for fixed prime factors can help with optimization
#
# The code that needs to be dynamically generated apart from the template:
# 1. The mixed radix implementation
# 2. Lookup tables
# For code generation parse the ntt source file. With the build preprocessor macros can form a single
# NTT output file for the given target point in the search space

# Optimization procedure template:
# 1. Pick a smart starting point based on the input parameters
# 2. Run performance benchmark suite
# 3. Compute slack variables for each parameter
# 4. Update in direction of furthest distance from target
# Consider: Weighting to how aggressively to update each parameter

# TODO:
# Leverage inline assembly
# AVX instructions

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
    max_stack = 0
    total_mem = 0
    runtime = 0
    # TODO worth collecting cache hit data?
    # For test suite
    dim_build_str = "DIM"
    type_build_str = "NTT_TYPE"
    is_lut_build_str = "LUT_BASED"
    fixed_radix_build_str = "FAST_FIXED"
    mixed_radix_build_str = "FAST_MIXED"
    max_mixed_radix_build_str = "FAST_MIXED"
    max_mixed_radix_build_str = "MAX_RADIX"
    is_parallel_build_str = "PARALLEL"
    def run_test_suite(self):
        PROG_NAME = "./ntt_test" 
        bash_command_base = "make clean && make CFLAGS=\"-O2" 
        bash_command_build = bash_command_base  + " -D" + ntt_obj.dim_build_str             + "=" + str(self.ntt_obj.n)
        bash_command_build = bash_command_build + " -D" + ntt_obj.type_build_str            + "=" + str(ntt_obj.type_str)
        bash_command_build = bash_command_build + " -D" + ntt_obj.is_lut_build_str          + "=" + str(ntt_obj.is_lut)
        bash_command_build = bash_command_build + " -D" + ntt_obj.fixed_radix_build_str     + "=" + str(ntt_obj.fixed_radix)
        bash_command_build = bash_command_build + " -D" + ntt_obj.fixed_radix_build_str     + "=" + str(ntt_obj.fixed_radix)
        bash_command_build = bash_command_build + " -D" + ntt_obj.mixed_radix_build_str     + "=" + str(ntt_obj.mixed_radix)
        bash_command_build = bash_command_build + " -D" + ntt_obj.max_mixed_radix_build_str + "=" + str(ntt_obj.max_mixed_radix)
        bash_command_build = bash_command_build + " -D" + ntt_obj.is_parallel_build_str     + "=" + str(ntt_obj.is_parallel)
        if (ntt_obj.is_parallel == 1):
            bash_command_build = bash_command_build + " -fopenmp "

    def __init__(self, type_str, is_lut, fixed_radix, max_mixed_radix, is_parallel, ntt_obj): 
        self.type_str = type_str 
        self.is_lut = is_lut 
        self.fixed_radix = fixed_radix 
        self.mixed_radix = 1 if fixed_radix == 0 else 0
        self.max_mixed_radix = max_mixed_radix 
        self.is_parallel = is_parallel 
        self.ntt_obj = ntt_obj

class Code_Gen: 
    def __init__(self, dimension, max_heap_size, max_code_size, num_threads, max_stack_size, max_mem_footprint):
        self.n = dimension
        self.max_heap = max_heap_size
        self.max_code = max_code_size
        self.num_threads = num_threads
        self.max_stack = max_stack_size
        self.max_mem_footprint = max_mem_footprint

class NTT_Params:
    prime_factorization = []

    # Setters
    def set_prime_factorization(self):
        fact = 2;
        n = self.n
        while (n > 1):
            if (n % fact == 0):
                self.prime_factorization.append(fact)
                n //= fact
                fact = 2
            else:
                fact += 1
        self.prime_factorization = sorted(self.prime_factorization)

    def __init__(self, dimension, inv):
        self.n = dimension
        self.g, self.mod = get_ntt_params(self.n)
        self.inv = inv
        self.set_prime_factorization()
        # Invert generator for inverse transform
        if (self.inv):
            self.g = modinv(self.g, self.mod)


def is_prime(n):
    if (n & 1 == 0):
        return 0
    else:
        d = 3
        while (d*d <= n):
            if (n % d == 0):
                return 0
            d = d + 2
        return 0 if n == 1 else 1

def get_ntt_params(n):
    k = 2
    while True:
        mod = n*k + 1
        if (is_prime(mod)):
            break
        else:
            k += 1
    for i in range(2, mod):
        good_pow = True
        running_pow = i
        for j in range(2, n+1):
            running_pow = (running_pow * i) % mod
            if (running_pow == 1 and j != n):
                good_pow = False
                break
        if (running_pow == 1 and good_pow):
            return (i, mod)

    # Raise exception if no generator
    assert True, "No generator for the given dimension"

def modinv(a, m):
    t = 0
    newt = 1
    r = m
    newr = a
    while (newr != 0):
        q = r // newr
        tempt = newt
        tempr = newr
        newt = t = q*newt
        newr = r - q*newr
        t = tempt
        r = tempr
    if (t < 0):
        t += m
    return t

def build_search_space():
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

def main(args):
    # Access command-line arguments using args.argument_name
    max_heap_size = int(args.heap)
    max_code_size = int(args.code)
    num_threads = int(args.threads)
    max_stack_size = int(args.stack)
    dimension = int(args.dimension)
    max_mem_footprint = int(args.memory)
    is_inv = bool(args.inverse)
    
    code_gen = Code_Gen(dimension, max_heap_size, max_code_size, num_threads, max_stack_size, max_mem_footprint)
    ntt_params = NTT_Params(dimension, is_inv)

    # The entire search space. Don't want to traverse all of it
    search_space = build_search_space()

    pdb.set_trace()

    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Code generation in C for efficient arbitrary-radix NTT implementations")
    
    # Add arguments for max heap size, max code size, number of threads, and max stack size
    parser.add_argument("-p", "--heap")
    parser.add_argument("-c", "--code")
    parser.add_argument("-t", "--threads")
    parser.add_argument("-s", "--stack")
    parser.add_argument("-d", "--dimension")
    parser.add_argument("-m", "--memory")
    parser.add_argument("-i", "--inverse", action='store_true')
    
    args = parser.parse_args()
    main(args)

