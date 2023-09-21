#include <time.h>
#include "ntt.h"

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
    fwd_ctx.size = DIM;
    inv_ctx.size = DIM;
    // Get the prime factors for this dimension
    fwd_ctx.prime_factors = get_prime_factors(DIM, &fwd_ctx.prime_factor_size);
    inv_ctx.prime_factors = fwd_ctx.prime_factors;
    inv_ctx.prime_factor_size = fwd_ctx.prime_factor_size;
    get_ntt_params(DIM, &fwd_ctx.mod, &fwd_ctx.w);
    inv_ctx.mod = fwd_ctx.mod;
    inv_ctx.w = modinv(fwd_ctx.w, fwd_ctx.mod);
    fwd_ctx.type = NTT_TYPE;
    inv_ctx.type = NTT_TYPE;
    printf("Runing NTT type %d, N = %d, mod = %d, g = %d, ginv = %d\n", NTT_TYPE, DIM, fwd_ctx.mod, fwd_ctx.w, inv_ctx.w);
    if (fwd_ctx.type == FAST_MIXED) {
        printf("Prime factors: ");
        for (int i = 0; i < fwd_ctx.prime_factor_size-1; i++) {
            printf("%d, ", fwd_ctx.prime_factors[i]);
        }
        printf("%d\n", fwd_ctx.prime_factors[fwd_ctx.prime_factor_size-1]);
    }
    fwd_ctx.recursive_base_size = RECURSIVE_BASE;
    inv_ctx.recursive_base_size = RECURSIVE_BASE;
    fwd_ctx.recursive_dec_size = RECURSIVE_DECIMATION;
    inv_ctx.recursive_dec_size = RECURSIVE_DECIMATION;
    fwd_ctx.barrett_k = 2*clog2(fwd_ctx.mod);
    fwd_ctx.barrett_r = ((1 << fwd_ctx.barrett_k)/fwd_ctx.mod);
    inv_ctx.barrett_k = fwd_ctx.barrett_k;
    inv_ctx.barrett_r = fwd_ctx.barrett_r;
    int in_seq_fwd[DIM];
    for (int i = 0; i < DIM; i++) {
        // in_seq_fwd[i] = rand() % fwd_ctx.mod;
        in_seq_fwd[i] = i;
    }
    fwd_ctx.in_seq = in_seq_fwd;
    if (!ntt_check(&fwd_ctx, &inv_ctx)) {
        #if FAIL_PRINT_INFO
        printf("FWD IN:\n");
        for (int i = 0; i < DIM; i++) {
            printf("%d, ", fwd_ctx.in_seq[i]);
        }
        printf("\nFWD OUT:\n");
        for (int i = 0; i < DIM; i++) {
            printf("%d, ", fwd_ctx.out_seq[i]);
        }
        printf("\nINV(FWD):\n");
        for (int i = 0; i < DIM; i++) {
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
