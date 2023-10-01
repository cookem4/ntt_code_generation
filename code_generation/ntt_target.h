#ifndef NTT_H
#define NTT_H
#include <stdlib.h>

// Constants
#define TYPE_N2 0
#define TYPE_FAST 1

// Mutually exclusive
// #define FAST_FIXED 1
// #define FAST_MIXED 0

// Use OMP
// #define PARALLEL 1
void ntt_impl(int *x, int *y, int inv);
void ntt_impl_inv(int *x, int *y, int inv);
int modinv(int, int);
#endif // NTT_H 
