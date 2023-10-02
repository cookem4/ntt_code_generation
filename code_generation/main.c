#include "ntt_target.h"
#include <string.h>

#include <stdlib.h>
#include <sys/time.h>
#include <stdio.h>

int modinv(int a, int m) {
    int q, t, r, newt, newr, tempt, tempr;
    t = 0;
    newt = 1;
    r = m;
    newr = a;
    while (newr != 0) {
        q = r / newr;
        tempt = newt;
        tempr = newr;
        newt = t - q*newt;
        newr = r - q*newr;
        t = tempt;
        r = tempr;
    }
    if (t < 0) {
        t += m;
    }
    return t;
}

int ntt_check(int *x, int *y, int *x_inv, int *y_inv) {
    ntt_impl(x, y, 0);
    ntt_impl_inv(y, y_inv, 1);
    x_inv = y;
    int *orig_arr = x;
    int *final_arr = y_inv;
    int inv_n = modinv(140, 281);
    for (int i = 0; i < 140; i++) {
        final_arr[i] = (final_arr[i] * inv_n) % 281;
        if (final_arr[i] != orig_arr[i]) {
            // TODO Temp skip FAST comparison
#if 1
            return 0;
#endif
        }
    }
    return 1;
}


int main() {

    srand(time(NULL));

    printf("Running NTT N = %d, mod = %d, g = %d, ginv = %d\n", 140, 281, 5, 225, 281);

    int *x = malloc(140 * sizeof(int));
    int *y = malloc(140 * sizeof(int));
    int *x_inv = malloc(140 * sizeof(int));
    int *y_inv = malloc(140 * sizeof(int));
    for (int i = 0; i < 140; i++) {
        // x[i] = rand() % 281;
        x[i] = i;
    }
#if DO_TIME
    struct timeval start, end;
    double elapsed_time;
    gettimeofday(&start, NULL);
#endif
    int check_res = ntt_check(x, y, x_inv, y_inv);
#if DO_TIME
    gettimeofday(&end, NULL);
    elapsed_time = (end.tv_sec - start.tv_sec)*1e6 + (end.tv_usec - start.tv_usec);
    printf("TIME: %0.0f us\n", elapsed_time);
#endif
    if (!check_res) {
        #if FAIL_PRINT_INFO
        printf("FWD IN:\n");
        for (int i = 0; i < 140; i++) {
            printf("%d, ", x[i]);
        }
        printf("\nFWD OUT:\n");
        for (int i = 0; i < 140; i++) {
            printf("%d, ", y[i]);
        }
        printf("\nINV(FWD):\n");
        for (int i = 0; i < 140; i++) {
            printf("%d, ", y_inv[i]);
        }
        printf("\n FAIL\n");
        #else
        printf("FAIL\n");
        #endif
    } else {
        printf("PASS\n");
    }
}
