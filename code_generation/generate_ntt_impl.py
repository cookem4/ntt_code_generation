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

    # Track metrics over time with changing search space point
    runtime_lst = []
    code_size_lst = []
    heap_size_lst = []
    ir_lst = []
    metric_lst = []

    # TODO do we need to account for heap differently when expanding
    # dimensions?
    # TODO the "zero" on the heap axis doesn't seem to be at zero. For ex with
    # dim of 4 the heap is profiled to be 4200

    for search_space_point in search_space:
        code_gen_point = ns.Ntt_Source(search_space_point, ntt_parameters)
        # Call code gen
        code_gen_point.generate_target()
        search_space_point.run_test_suite()
        # After running the test suite we have a point on the domain indicating the code size, etc alongside runtime
        # We want the minimum runtime that fits within the given constraints on memory utilization
        metric_lst.append([search_space_point.runtime, search_space_point.code_size, search_space_point.max_heap, search_space_point.instr_ret, search_space_point.variant_name])

    for metric in metric_lst:
        print(f"Runtime: {metric[0]} Code size: {metric[1]} Heap size: {metric[2]} Instructions retired: {metric[3]} Variant: {metric[4]}")

    # ILP Notes:
    # - Might not be needed since search space is relatively small
    # - Caching-based appcoaches could give more insight into complexity of
    # search-space, but it was also shown that caching was not very helpful due
    # to regularity of accesses
    # - Maybe some pseudo-caching where some powers are stored, even half, anything that can be used to prevent
    # computation of a_pow_b_mod_m
    
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

