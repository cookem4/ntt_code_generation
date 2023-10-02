#include "ntt_target.h"

int barrett_reduce(int a) {
  long int q, t;
  q = ((long int) a*932) >> 18;
  t = (long int) a - (q * 281);
  t = t >= (long int) 281 ? t - (long int) 281 : t;
  return (int) t;
}

int barrett_reduce_pow(int a) {
  long int q, t;
  q = ((long int) a*468) >> 16;
  t = (long int) a - (q * 140);
  t = t >= (long int) 140 ? t - (long int) 140 : t;
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
static const int g_stat_prime_factors[4] = {
	2, 
	2, 
	5, 
	7

};
#endif // End FAST_MIXED

#if LUT_BASED == 1
static const int g_stat_twiddle_pows[140] = {
	1, 
	5, 
	25, 
	125, 
	63, 
	34, 
	170, 
	7, 
	35, 
	175, 
	32, 
	160, 
	238, 
	66, 
	49, 
	245, 
	101, 
	224, 
	277, 
	261, 
	181, 
	62, 
	29, 
	145, 
	163, 
	253, 
	141, 
	143, 
	153, 
	203, 
	172, 
	17, 
	85, 
	144, 
	158, 
	228, 
	16, 
	80, 
	119, 
	33, 
	165, 
	263, 
	191, 
	112, 
	279, 
	271, 
	231, 
	31, 
	155, 
	213, 
	222, 
	267, 
	211, 
	212, 
	217, 
	242, 
	86, 
	149, 
	183, 
	72, 
	79, 
	114, 
	8, 
	40, 
	200, 
	157, 
	223, 
	272, 
	236, 
	56, 
	280, 
	276, 
	256, 
	156, 
	218, 
	247, 
	111, 
	274, 
	246, 
	106, 
	249, 
	121, 
	43, 
	215, 
	232, 
	36, 
	180, 
	57, 
	4, 
	20, 
	100, 
	219, 
	252, 
	136, 
	118, 
	28, 
	140, 
	138, 
	128, 
	78, 
	109, 
	264, 
	196, 
	137, 
	123, 
	53, 
	265, 
	201, 
	162, 
	248, 
	116, 
	18, 
	90, 
	169, 
	2, 
	10, 
	50, 
	250, 
	126, 
	68, 
	59, 
	14, 
	70, 
	69, 
	64, 
	39, 
	195, 
	132, 
	98, 
	209, 
	202, 
	167, 
	273, 
	241, 
	81, 
	124, 
	58, 
	9, 
	45, 
	225 

};

static const int g_stat_inv_twiddle_pows[140] = {
	1, 
	225, 
	45, 
	9, 
	58, 
	124, 
	81, 
	241, 
	273, 
	167, 
	202, 
	209, 
	98, 
	132, 
	195, 
	39, 
	64, 
	69, 
	70, 
	14, 
	59, 
	68, 
	126, 
	250, 
	50, 
	10, 
	2, 
	169, 
	90, 
	18, 
	116, 
	248, 
	162, 
	201, 
	265, 
	53, 
	123, 
	137, 
	196, 
	264, 
	109, 
	78, 
	128, 
	138, 
	140, 
	28, 
	118, 
	136, 
	252, 
	219, 
	100, 
	20, 
	4, 
	57, 
	180, 
	36, 
	232, 
	215, 
	43, 
	121, 
	249, 
	106, 
	246, 
	274, 
	111, 
	247, 
	218, 
	156, 
	256, 
	276, 
	280, 
	56, 
	236, 
	272, 
	223, 
	157, 
	200, 
	40, 
	8, 
	114, 
	79, 
	72, 
	183, 
	149, 
	86, 
	242, 
	217, 
	212, 
	211, 
	267, 
	222, 
	213, 
	155, 
	31, 
	231, 
	271, 
	279, 
	112, 
	191, 
	263, 
	165, 
	33, 
	119, 
	80, 
	16, 
	228, 
	158, 
	144, 
	85, 
	17, 
	172, 
	203, 
	153, 
	143, 
	141, 
	253, 
	163, 
	145, 
	29, 
	62, 
	181, 
	261, 
	277, 
	224, 
	101, 
	245, 
	49, 
	66, 
	238, 
	160, 
	32, 
	175, 
	35, 
	7, 
	170, 
	34, 
	63, 
	125, 
	25, 
	5 

};
#endif // LUT_BASED

void ntt_impl(int *x, int *y, int inv) {

#if LUT_BASED == 0
    int twiddle = 1;
    int twiddle_fact = 1; // Geometrically increasing factor in each loop iteration
    int temp;
#endif
    for (int i = 0; i < 140; i++) {
        y[i] = 0;
    }
#if PARALLEL == 1
    #pragma omp parallel for
    #endif
    for (int i = 0; i < 140; i++) {
#if LUT_BASED == 0
        twiddle = 1;
#endif
        for (int j = 0; j < 140; j++) {
#if LUT_BASED == 0
            twiddle = j == 0 ? 1 : barrett_reduce(twiddle * twiddle_fact);
            temp = barrett_reduce(x[j] * twiddle);
            y[i] = y[i] + temp > 281 ? y[i] + temp - 281 : y[i] + temp;
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
        twiddle_fact = barrett_reduce(twiddle_fact * 5);
    #else
        // Use dynamic inv
        twiddle_fact = barrett_reduce(twiddle_fact * (inv ? 225 : 5));
    #endif
#endif
    }

} // End ntt_impl

void ntt_impl_inv(int *x, int *y, int inv) {
    // The illusion of choice
    ntt_impl(x, y, 1);
}
