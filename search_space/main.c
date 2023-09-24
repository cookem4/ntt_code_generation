#include <time.h>
#include "ntt.h"

#if DO_TIME
#include <sys/time.h>
#endif

/*
static const int Ns[NUM_SUPPORTED_LENGTHS] = {4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384};
static const int Ms[NUM_SUPPORTED_LENGTHS] = {17, 17, 97, 193, 257, 257, 7681, 12289, 12289, 12289, 40961, 65537, 65537};
static const int Gs[NUM_SUPPORTED_LENGTHS] = {4, 9, 70, 121, 81, 9, 3844, 2401, 49, 1681, 144, 225, 81}; 
*/

int main() {
    // init_ntt();
    // Seed RND
    srand(time(NULL));

    ntt_ctx fwd_ctx, inv_ctx;
    fwd_ctx.is_fwd = 1;
    inv_ctx.is_fwd = 0;
    // Expand dimension via padding for non-power-of-2 for fast
    // ntt with fixed radix of 2
#if NTT_TYPE == TYPE_FAST_FIXED || NTT_TYPE == TYPE_FAST_FIXED_INPLACE
    fwd_ctx.size = 1<<clog2(DIM);
    inv_ctx.size = 1<<clog2(DIM);
#else
    fwd_ctx.size = DIM;
    inv_ctx.size = DIM;
#endif
    // Get the prime factors for this dimension
    fwd_ctx.prime_factors = get_prime_factors(fwd_ctx.size, &fwd_ctx.prime_factor_size);
#if NTT_TYPE == TYPE_FAST_MIXED_MR5_INPLACE
    // Pad sequence until largest factor is less than or equal to 5
    int largest_prime_fact;
    do {
        largest_prime_fact = fwd_ctx.prime_factors[0];
        for (int i = 1; i < fwd_ctx.prime_factor_size; i++) {
            if (largest_prime_fact < fwd_ctx.prime_factors[i]) {
                largest_prime_fact = fwd_ctx.prime_factors[i];
            }
        }
        if (largest_prime_fact > 5) {
            fwd_ctx.size++;
            inv_ctx.size++;
            fwd_ctx.prime_factors = get_prime_factors(fwd_ctx.size, &fwd_ctx.prime_factor_size);
        }
    } while (largest_prime_fact > 5);
#endif
    inv_ctx.prime_factors = fwd_ctx.prime_factors;
    inv_ctx.prime_factor_size = fwd_ctx.prime_factor_size;
    get_ntt_params(fwd_ctx.size, &fwd_ctx.mod, &fwd_ctx.w);
    inv_ctx.mod = fwd_ctx.mod;
    inv_ctx.w = modinv(fwd_ctx.w, fwd_ctx.mod);
    fwd_ctx.type = NTT_TYPE;
    inv_ctx.type = NTT_TYPE;
    printf("Running NTT type %d, N = %d, mod = %d, g = %d, ginv = %d\n", NTT_TYPE, fwd_ctx.size, fwd_ctx.mod, fwd_ctx.w, inv_ctx.w);
    printf("Prime factors: ");
    for (int i = 0; i < fwd_ctx.prime_factor_size-1; i++) {
        printf("%d, ", fwd_ctx.prime_factors[i]);
    }
    printf("%d\n", fwd_ctx.prime_factors[fwd_ctx.prime_factor_size-1]);
    fwd_ctx.recursive_base_size = RECURSIVE_BASE;
    inv_ctx.recursive_base_size = RECURSIVE_BASE;
    fwd_ctx.recursive_dec_size = RECURSIVE_DECIMATION;
    inv_ctx.recursive_dec_size = RECURSIVE_DECIMATION;
    fwd_ctx.barrett_k = 2*clog2(fwd_ctx.mod);
    fwd_ctx.barrett_r = ((1 << fwd_ctx.barrett_k)/fwd_ctx.mod);
    inv_ctx.barrett_k = fwd_ctx.barrett_k;
    inv_ctx.barrett_r = fwd_ctx.barrett_r;
#if NTT_TYPE == TYPE_N2_4_LUT || NTT_TYPE == TYPE_FAST_FIXED_INPLACE_LUT || NTT_TYPE == TYPE_FAST_MIXED_INPLACE_LUT
    populate_pows_lut(&fwd_ctx, &inv_ctx);
#endif
    int in_seq_fwd[fwd_ctx.size];
    for (int i = 0; i < fwd_ctx.size; i++) {
        // in_seq_fwd[i] = rand() % fwd_ctx.mod;
        in_seq_fwd[i] = i;
    }
    fwd_ctx.in_seq = in_seq_fwd;
#if DO_TIME
    struct timeval start, end;
    double elapsed_time;
    gettimeofday(&start, NULL);
    int check_res = ntt_check(&fwd_ctx, &inv_ctx);
    gettimeofday(&end, NULL);
    elapsed_time = (end.tv_sec - start.tv_sec)*1e6 + (end.tv_usec - start.tv_usec);
    printf("TIME: %0.0f us\n", elapsed_time);
#else
    int check_res = ntt_check(&fwd_ctx, &inv_ctx);
#endif
    if (!check_res) {
        #if FAIL_PRINT_INFO
        printf("FWD IN:\n");
        for (int i = 0; i < fwd_ctx.size; i++) {
            printf("%d, ", fwd_ctx.in_seq[i]);
        }
        printf("\nFWD OUT:\n");
        for (int i = 0; i < fwd_ctx.size; i++) {
            printf("%d, ", fwd_ctx.out_seq[i]);
        }
        printf("\nINV(FWD):\n");
        for (int i = 0; i < fwd_ctx.size; i++) {
            printf("%d, ", inv_ctx.out_seq[i]);
        }
        printf("\n FAIL\n");
        #else
        printf("FAIL\n");
        #endif
    } else {
        printf("PASS\n");
    }
    return 0;
}
