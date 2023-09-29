import argparse
import numpy as np

#
# Generate C code for the NTT based on the given input parameters.
# Note: although the mixed-radix implementation was seen to be slow, code generation for fixed prime factors can help with optimization
#

class Code_Gen: 
    def __init__(self, dimension, max_heap_size, max_code_size, num_threads, max_stack_size, max_mem_footprint):
        self.n = dimension
        self.max_heap = max_heap_size
        self.max_code = max_code_size
        self.num_threads = num_threads
        self.max_stack = max_stack_size
        self.max_mem_footprint = max_mem_footprint

class NTT_Params:
    self.prime_factorization = ()

    # Setters
    def set_prime_factorization(self):

    # Getters
    def get_prime_factorization(self):
        return self.prime_factorization

    def __init__(self, dimension, g, mod, inv):
        self.n = dimension
        self.g, self.mod = get_ntt_params(self.n)
        self.inv = inv
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
        if (running_pow = 1 && good_pow):
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

def main(args):
    # Access command-line arguments using args.argument_name
    max_heap_size = args.heap
    max_code_size = args.code
    num_threads = args.threads
    max_stack_size = args.stack
    dimension = args.dimension
    max_mem_footprint = args.memory
    
    code_gen = Code_Gen(dimension, max_heap_size, max_code_size, num_threads, max_stack_size, max_mem_footprint)
    ntt_params = NTT_Params(dimension)
    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Description of your script.")
    
    # Add arguments for max heap size, max code size, number of threads, and max stack size
    parser.add_argument("-h", "--heap", type=int, help="Max heap size")
    parser.add_argument("-c", "--code", type=int, help="Max code size")
    parser.add_argument("-t", "--threads", type=int, help="Number of threads")
    parser.add_argument("-s", "--stack", type=int, help="Max stack size")
    parser.add_argument("-d", "--dimension", type=int, help="NTT dimension/transformation size")
    parser.add_argument("-m", "--memory", type=int, help="Max memory footprint of the NTT implementation");
    
    args = parser.parse_args()
    main(args)

