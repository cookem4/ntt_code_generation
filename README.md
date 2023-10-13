# Problem Statement
Develop a code generator to create a custom NTT implementation for the target architecture to minimize runtime given a desired maximum memory footprint

# Overview
Literature shows disjointed approaches across both HW and SW. This project approahces NTT computation in the SW domain with a domain-specific code generator. The code generator presented first prunes a large search space of potential NTT implementation candidates by eliminating variants that do not fit within the required memory footprint. Graph traversal is then performed to locate the variant with minimal runtime for the target system. This includes consideration of multi-threading, AVX512/AVX2 instructions sets, and various N^2 versus NlogN implementations that each trade-off runtime, code size, heap size, and stack size. The initial search space is 94 points.

# To Run
Code generation is run through the code_generation/generate_ntt_impl.py script. To run:
~~~
cd code_generation
python3 generate_ntt_impl.py --dimension=<#> --verbose=<0/1> --codesize=<Max code size in B> --heapsize=<Max heap size in B> --stacksize=<Max stack size in B>
~~~
The target NTT implementation for the architecture that runs the generate_ntt_impl.py script is deployed to the ntt_test binary. The object files and source files are also available for custom linking and/or compilation. The source files consist of:
1. main.c - Runs a brief test suite to assert PASS/FAIL by performing the NTT in the forward and inverse directions
2. ntt_target.c/h - contains the ntt implementation for the deployed variant
