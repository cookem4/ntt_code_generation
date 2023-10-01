#ifndef NTT_H
#define NTT_H
#include <stdlib.h>

// Constants
#define FAIL_PRINT_INFO 1

// Use OMP
// #define PARALLEL 1
void ntt_impl(int *x, int *y, int inv);
void ntt_impl_inv(int *x, int *y, int inv);
#endif // NTT_H 
