import re
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

def get_arch():
    bash_command = "lscpu"
    output = ss.run_bash_cmd(bash_command) 
    matches = re.findall(r"Architecture:\s+(.*)", output)
    arch_str = ""
    if not matches:
        print("ERROR: No arch available")
    arch_str = matches[0]
    is_x86 = arch_str == "x86_64"
    is_arm64 = arch_str == "arm64"
    is_arm32 = arch_str == "arm32"
    matches = re.findall(r"avx2", output)
    has_avx2 = True if matches else False
    matches = re.findall(r"avx512", output)
    has_avx512 = True if matches else False
    matches = re.findall(r"Thread\(s\) per core:\s+(\d+)", output)
    num_threads_per_core = 1
    if matches:
        num_threads_per_core = int(matches[0])
    matches = re.findall(r"Core\(s\) per socket:\s+(\d+)", output)
    cores_per_socket = 1
    if matches:
        cores_per_socket = int(matches[0])
    matches = re.findall(r"Socket\(s\):\s+(\d+)", output)
    sockets = 1
    if matches:
        sockets = int(matches[0])
    num_threads = num_threads_per_core * cores_per_socket * sockets
    ret_dict = {
            "x86" : is_x86,
            "arm64" : is_arm64,
            "arm32" : is_arm32,
            "avx2" : has_avx2,
            "avx512" : has_avx512,
            "num_threads" : num_threads
    }
    return ret_dict


def main(args):
    # Access command-line arguments using args.argument_name
    dimension = int(args.dimension)
    code_size = int(args.codesize)
    heap_size = int(args.heap)
    
    ntt_parameters = nt.NTT_Params(dimension)

    arch_dict = get_arch()

    search_space = ss.build_search_space(arch_dict)

    # Track metrics over time with changing search space point
    runtime_lst = []
    code_size_lst = []
    heap_size_lst = []
    ir_lst = []
    metric_lst = []

    arch_dict = get_arch()

    # Quick profile based on memory requirements to reduce search space
    # The idea is a quick conservative estimate to ensure that we stay within
    # Desired memory footprint
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
    parser.add_argument("-d", "--dimension")
    parser.add_argument("-s", "--codesize")
    parser.add_argument("-e", "--heap")
    
    args = parser.parse_args()
    main(args)

