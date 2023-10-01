#include "ntt_target.h"
#include <string.h>

#include <stdlib.h>
#include <sys/time.h>
#include <stdio.h>

int ntt_check(int *x) {
    int *y = calloc(128, sizeof(int));
    int *y_inv = calloc(128, sizeof(int));
    ntt_impl(x, y, 0);
    ntt_impl_inv(y, y_inv, 1);
    int *orig_arr = x;
    int *final_arr = y_inv;
    int inv_n = modinv(128, 257);
    for (int i = 0; i < 128; i++) {
        final_arr[i] = (final_arr[i] * inv_n) % 257;
        if (final_arr[i] != orig_arr[i]) {
            return 0;
        }
    }
    return 1;
}


int main() {

    srand(time(NULL));

    printf("Running NTT N = %d, mod = %d, g = %d, ginv = %d\n", 128, 257, 9, modinv(9, 257));

    int *x = malloc(128 * sizeof(int));
    for (int i = 0; i < 128; i++) {
        x[i] = rand() % 257;
    }
#if DO_TIME
    struct timeval start, end;
    double elapsed_time;
    gettimeofday(&start, NULL);
#endif
    int check_res = ntt_check(x);
#if DO_TIME
    gettimeofday(&end, NULL);
    elapsed_time = (end.tv_sec - start.tv_sec)*1e6 + (end.tv_usec - start.tv_usec);
    printf("TIME: %0.0f us\n", elapsed_time);
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
}
