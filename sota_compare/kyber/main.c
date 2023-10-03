#include <time.h>
#include "ntt.h"
#include <stdio.h>

#if DO_TIME
#include <sys/time.h>
#endif

int main() {
    // init_ntt();
    // Seed RND
    srand(time(NULL));

    printf("Running Kyber NTT \n");
    int16_t in_seq_fwd[256];
    for (int i = 0; i < 256; i++) {
        in_seq_fwd[i] = i;
    }
#if DO_TIME
    struct timeval start, end;
    double elapsed_time;
    gettimeofday(&start, NULL);
#endif
    ntt(in_seq_fwd);
    invntt(in_seq_fwd);
#if DO_TIME
    gettimeofday(&end, NULL);
    elapsed_time = (end.tv_sec - start.tv_sec)*1e6 + (end.tv_usec - start.tv_usec);
    printf("TIME: %0.0f us\n", elapsed_time);
#endif
    return 0;
}
