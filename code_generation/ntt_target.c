#include "ntt_target.h"

int barrett_reduce(int a) {
  long int q, t;
  q = ((long int) a*1020) >> 18;
  t = (long int) a - (q * 257);
  t = t >= (long int) 257 ? t - (long int) 257 : t;
  return (int) t;
}

int barrett_reduce_pow(int a) {
  long int q, t;
  q = ((long int) a*128) >> 14;
  t = (long int) a - (q * 128);
  t = t >= (long int) 128 ? t - (long int) 128 : t;
  return (int) t;
}

int a_pow_b_mod_m(int a, int b) {
    int abm = 1;
    for (int i = 0; i < b; i++) {
        abm = barrett_reduce(abm * a);
    }
    return abm;
}

#if FAST_MIXED == 1
static const int g_stat_prime_factors[7] = {
	2, 
	2, 
	2, 
	2, 
	2, 
	2, 
	2

};
#endif // End FAST_MIXED

#if LUT_BASED == 1
static const int g_stat_twiddle_pows[128] = {
	1, 
	9, 
	81, 
	215, 
	136, 
	196, 
	222, 
	199, 
	249, 
	185, 
	123, 
	79, 
	197, 
	231, 
	23, 
	207, 
	64, 
	62, 
	44, 
	139, 
	223, 
	208, 
	73, 
	143, 
	2, 
	18, 
	162, 
	173, 
	15, 
	135, 
	187, 
	141, 
	241, 
	113, 
	246, 
	158, 
	137, 
	205, 
	46, 
	157, 
	128, 
	124, 
	88, 
	21, 
	189, 
	159, 
	146, 
	29, 
	4, 
	36, 
	67, 
	89, 
	30, 
	13, 
	117, 
	25, 
	225, 
	226, 
	235, 
	59, 
	17, 
	153, 
	92, 
	57, 
	256, 
	248, 
	176, 
	42, 
	121, 
	61, 
	35, 
	58, 
	8, 
	72, 
	134, 
	178, 
	60, 
	26, 
	234, 
	50, 
	193, 
	195, 
	213, 
	118, 
	34, 
	49, 
	184, 
	114, 
	255, 
	239, 
	95, 
	84, 
	242, 
	122, 
	70, 
	116, 
	16, 
	144, 
	11, 
	99, 
	120, 
	52, 
	211, 
	100, 
	129, 
	133, 
	169, 
	236, 
	68, 
	98, 
	111, 
	228, 
	253, 
	221, 
	190, 
	168, 
	227, 
	244, 
	140, 
	232, 
	32, 
	31, 
	22, 
	198, 
	240, 
	104, 
	165, 
	200 

};

static const int g_stat_inv_twiddle_pows[128] = {
	1, 
	28, 
	13, 
	107, 
	169, 
	106, 
	141, 
	93, 
	34, 
	181, 
	185, 
	40, 
	92, 
	6, 
	168, 
	78, 
	128, 
	243, 
	122, 
	75, 
	44, 
	204, 
	58, 
	82, 
	240, 
	38, 
	36, 
	237, 
	211, 
	254, 
	173, 
	218, 
	193, 
	7, 
	196, 
	91, 
	235, 
	155, 
	228, 
	216, 
	137, 
	238, 
	239, 
	10, 
	23, 
	130, 
	42, 
	148, 
	32, 
	125, 
	159, 
	83, 
	11, 
	51, 
	143, 
	149, 
	60, 
	138, 
	9, 
	252, 
	117, 
	192, 
	236, 
	183, 
	241, 
	66, 
	49, 
	87, 
	123, 
	103, 
	57, 
	54, 
	227, 
	188, 
	124, 
	131, 
	70, 
	161, 
	139, 
	37, 
	8, 
	224, 
	104, 
	85, 
	67, 
	77, 
	100, 
	230, 
	15, 
	163, 
	195, 
	63, 
	222, 
	48, 
	59, 
	110, 
	253, 
	145, 
	205, 
	86, 
	95, 
	90, 
	207, 
	142, 
	121, 
	47, 
	31, 
	97, 
	146, 
	233, 
	99, 
	202, 
	2, 
	56, 
	26, 
	214, 
	81, 
	212, 
	25, 
	186, 
	68, 
	105, 
	113, 
	80, 
	184, 
	12, 
	79, 
	156 

};
#endif // LUT_BASED

void ntt_impl(int *x, int *y, int inv) {

#if LUT_BASED == 0
    int twiddle = 1;
    int twiddle_fact = 1; // Geometrically increasing factor in each loop iteration
    int temp;
#endif
    for (int i = 0; i < 128; i++) {
        y[i] = 0;
    }
#if PARALLEL == 1
    #pragma omp parallel for
    #endif
    for (int i = 0; i < 128; i++) {
#if LUT_BASED == 0
        twiddle = 1;
#endif
        for (int j = 0; j < 128; j++) {
#if LUT_BASED == 0
            twiddle = j == 0 ? 1 : barrett_reduce(twiddle * twiddle_fact);
            temp = barrett_reduce(x[j] * twiddle);
            y[i] = y[i] + temp > 257 ? y[i] + temp - 257 : y[i] + temp;
#else // LUT_BASED == 1
    #if SEPARATE_INV_DEF == 1 // Need to pick between different g_stat vars
        // This arg is forward_impl from python
        #if 1
            y[i] = barrett_reduce(y[i] + x[j] * g_stat_twiddle_pows[barrett_reduce_pow(i*j)]);
        #else
            y[i] = barrett_reduce(y[i] + x[j] * g_stat_inv_twiddle_pows[barrett_reduce_pow(i*j)]);
        #endif
    #else // Dynamic inv used since same func reused for fwd and inv
            y[i] = barrett_reduce(y[i] + x[j] * (inv ? g_stat_inv_twiddle_pows[barrett_reduce_pow(i*j)] : g_stat_twiddle_pows[barrett_reduce_pow(i*j)]));
    #endif
#endif
        }
#if LUT_BASED == 0
        // Increase twiddle factor
    #if SEPARATE_INV_DEF == 1
        twiddle_fact = barrett_reduce(twiddle_fact * 9);
    #else
        // Use dynamic inv
        twiddle_fact = barrett_reduce(twiddle_fact * (inv ? 28 : 9));
    #endif
#endif
    }

} // End ntt_impl

void ntt_impl_inv(int *x, int *y, int inv) {
    // The illusion of choice
    ntt_impl(x, y, 1);
}
