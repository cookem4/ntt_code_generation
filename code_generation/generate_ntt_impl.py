import argparse
import numpy as np
import pdb

import ntt_source as ns
import ntt_params as nt
import search_space as ss

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

# Just a container for parameters
class Code_Gen_Params: 
    def __init__(self, dimension, max_heap_size, max_code_size, num_threads, max_stack_size, max_mem_footprint):
        self.n = dimension
        self.max_heap = max_heap_size
        self.max_code = max_code_size
        self.num_threads = num_threads
        self.max_stack = max_stack_size
        self.max_mem_footprint = max_mem_footprint


def main(args):
    # Access command-line arguments using args.argument_name
    max_heap_size = int(args.heap)
    max_code_size = int(args.code)
    num_threads = int(args.threads)
    max_stack_size = int(args.stack)
    dimension = int(args.dimension)
    max_mem_footprint = int(args.memory)
    
    code_gen = Code_Gen_Params(dimension, max_heap_size, max_code_size, num_threads, max_stack_size, max_mem_footprint)
    ntt_parameters = nt.NTT_Params(dimension)

    # The entire search space. Don't want to traverse all of it
    # Use optimization algorithm to navigate to a "good" spot
    search_space = ss.build_search_space()

    # TODO for testing purposes should also be able to test a single point

    code_gen_inst = ns.Ntt_Source(search_space[0], ntt_parameters)
    code_gen_inst.generate_target()
    search_space[0].run_test_suite()

    '''
    for seach_space_point in seach_space:
        code_gen_point = ns.NTT_Source(seach_space_point, ntt_parameters)
        # Call code gen
        code_gen_point.generate_target()
    '''

    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Code generation in C for efficient arbitrary-radix NTT implementations")
    
    # Add arguments for max heap size, max code size, number of threads, and max stack size
    parser.add_argument("-p", "--heap")
    parser.add_argument("-c", "--code")
    parser.add_argument("-t", "--threads")
    parser.add_argument("-s", "--stack")
    parser.add_argument("-d", "--dimension")
    parser.add_argument("-m", "--memory")
    
    args = parser.parse_args()
    main(args)

