#ifndef NTT_H
#define NTT_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// TODO defined VIA makefile
// #define NTT_TYPE FAST
// #define DIM 512

// For both mixed and fixed radix
#define RECURSIVE_BASE 2

// TODO for fixed radix
#define RECURSIVE_DECIMATION 2

#define FAIL_PRINT_INFO 0

typedef enum {
    MTX,
    N2_1,
    N2_2,
    N2_3,
    FAST_FIXED,
    FAST_MIXED,
} NTT_TYPE_t;

typedef struct {
    int mod;
    int qinv;
    int size;
    int barrett_k;
    int barrett_r;
    int w;
    int recursive_base_size;
    int recursive_dec_size;
    NTT_TYPE_t type;
    int prime_factor_size;
    int * prime_factors;
    int * in_seq;
    int * out_seq;
} ntt_ctx;

int ntt_check(ntt_ctx *, ntt_ctx *);
int fqmul(int, int, ntt_ctx *);
int barrett_reduce(int a, ntt_ctx *ctx);
int modinv(int a, int m);
int is_prime(int n);
void get_ntt_params(int n, int * mod, int * g);
int * get_prime_factors(int n, int *prime_factor_size);
int clog2(long int in);

#endif // NTT_H
