# This file is to be used to build out the NTT implementation with
# Common blocks for each piece of the transform
# This will do pure code generation without many build flags in C
# Using as few build flags as possible to keep static code generation for
# the mixed radix implementation

import ntt_params
import search_space

# This class should be able to build out the source code given a set of NTT
# parameters and a search space object defining the point in the space
class Ntt_Source:
    # Substring $SUB_*$ indicates substitution, where the string following
    # $SUB_ is the variable name to substitute from the namespace

    c_test_name = "test_target.c"
    c_target_name = "ntt_target.c"
    h_target_name = "ntt_target.h"

    c_ntt_impl_func_proto = \
            """
            void ntt_impl(int *x, int *y) {
            """
    c_ntt_impl_func_end = \
            """
            } // End ntt_impl
            """

    # Always defined
    c_barrett_reduction = \
            """
            int barrett_reduce(int a) {
              long int q, t;
              q = ((long int) $SUB_barrett_r$) >> $SUB_barrett_k$;
              t = (long int) a - (q * $SUB_mod$);
              t = t >= (long int) $SUB_mod$ ? t - (long int) $SUB_mod$ : t;
              return (int) t;
            }
            """

    # Reduces the LUT mapping i*j instead of doing the mod operation
    c_power_barrett_reduction = \
            """
            int barrett_reduce_pow(int a) {
              long int q, t;
              q = ((long int) $SUB_barrett_r_pow$) >> $SUB_barrett_k_pow$;
              t = (long int) a - (q * $SUB_dim$);
              t = t >= (long int) $SUB_dim$ ? t - (long int) $SUB_dim$ : t;
              return (int) t;
            }
            """
    c_a_pow_b_mod_m = \
            """
            int a_pow_b_mod_m(int a, int b) {
                int abm = 1;
                for (int i = 0; i < b; i++) {
                    abm = barrett_reduce(abm * a);
                }
                return abm;
            }
            """

    # Defined and populated if LUT approach used
    c_static_pow_lut = \
            """
            static const int g_stat_twiddle_pows[$SUB_mod$] = {
                $SUB_pow_lut_entries$
            }
            """

    # Populated and used by FAST MR
    c_static_pow_lut = \
            """
            static const int g_stat_prime_factors[$SUB_prime_factor_size$] = {
                $SUB_prime_factor_entries$
            }
            """

    c_N2 = \
            """
        #if LUT_BASED == 1
            int twiddle = 1;
            int twiddle_fact = 1; // Geometrically increasing factor in each loop iteration
            int temp;
        #endif
            for (int i = 0; i < $SUB_dim$; i++) {
                y[i] = 0;
            }
        #if PARALLEL == 1
            #pragma omp parallel for
            #endif
            for (int i = 0; i < $SUB_dim$; i++) {
        #if LUT_BASED == 0
                twiddle = 1;
        #endif
                for (int j = 0; j < $SUB_dim$; j++) {
        #if LUT_BASED == 0
                    twiddle = j == 0 ? 1 : barrett_reduce(twiddle * twiddle_fact);
                    temp = barrett_reduce(x[j] * twiddle);
                    y[i] = y[i] + temp > $SUB_mod$ ? y[i] + temp - $SUB_mod$ : y[i] + temp;
        #else // LUT_BASED == 1
                    y[i] = barrett_reduce(y[i] + x[j] * g_stat_twiddle_pows[barrett_reduce_pow(i*j)]);
        #endif
                }
        #if LUT_BASED == 0
                // Increase twiddle factor
                twiddle_fact = barrett_reduce(twiddle_fact * $SUB_g$);
        #endif
            }
            """
    c_fast_fixed_r2 = \
            """
            int t1, t2;
            int twiddle1, twiddle2;
            int cur_size;
            int cur_idx;
        #if LUT_BASED == 0
            int half_rot = a_pow_b_mod_m($SUB_g$, $SUB_dim$>>1);
            int stride_twiddle;
            int running_twiddle_1;
        #else
            int half_rot = g_stat_twiddle_pows[$SUB_dim$>>1];
        #endif
            for (int stride = $SUB_dim$>>1; stride >= 1; stride >>= 1) { // log n
                cur_size = stride<<1;
        #if LUT_BASED == 0
                stride_twiddle = a_pow_b_mod_m($SUB_g$, stride);
                running_twiddle_1 = 1;
        #endif
                // For each of the "sub-transforms" in the CT butterfly
                for (int sub_trans_idx = 0; sub_trans_idx < $SUB_dim$/cur_size; sub_trans_idx++) {
                    // We take steps within our sub transform
                    for (int step = 0; step < stride; step++) {
                        cur_idx = sub_trans_idx*cur_size + step;
        #if LUT_BASED == 0
                        twiddle1 = running_twiddle_1;
                        running_twiddle_1 = barrett_reduce(stride_twiddle * running_twiddle_1);
                        // Twiddle 2 is offset half a rotation from twiddle 1
                        twiddle2 = barrett_reduce(twiddle1 * half_rot);
        #else // LUT
                        twiddle1 = g_stat_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride)];
                        twiddle2 = g_stat_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride + $SUB_dim$>>1)];
        #endif
                        x[cur_idx + stride] = barrett_reduce(x[cur_idx] + x[cur_idx + stride] * twiddle2);
                        x[cur_idx] = barrett_reduce(x[cur_idx] + x[cur_idx + stride] * twiddle1);
                    }
                }
            }
            """

    # TODO how to avoid non-constant iterator over prime factors?
    # Is a static const sufficient?
    c_fast_mr = \
            """
            int t;
            int twiddle;
            int n_cur = $SUB_dim$;
            int orig_size = $SUB_dim$;
            int fact_cnt = 0;
            int n2 = n_cur/g_stat_prime_factors[fact_cnt];
            int dst_idx;
        #if LUT_BASED == 0
            int base_j_1; // With n_cur/DIM
            int running_pow_j_2; // With above ^ni
            int running_pow_j_3; // With above ^butterfly_j
            int base_i_1; // With dim/g_stat_prime_factors[fact_cnt]
            int running_pow_i_2; // With above ^butterfly_i
        #endif
            // for (int n2 = n_cur/g_stat_prime_factors[fact_cnt]; n2 >= 1; n2 /= (g_stat_prime_factors[fact_cnt])) { // log n
            while (1) { // Iterates over prime factors. Termination at bottom of loop
                // For each of the "sub-transforms" in the CT butterfly
                for (int n1 = 0; n1 < orig_size/n_cur; n1++) {
        #if LUT_BASED == 0
                    base_j_1 = a_pow_b_mod_m($SUB_g$, n_cur/$SUB_dim$);
                    base_i_1 = a_pow_b_mod_m($SUB_g$, n_cur/g_stat_prime_factors[fact_cnt]);
                    running_pow_j_2 = 1;
        #endif
                    // We take steps within our sub transform
                    for (int ni = 0; ni < n2; ni++) {
                        // TODO any way around this dynamic memory allocation?
                        int *x_t = calloc(g_stat_prime_factors[fact_cnt], sizeof(int));
                        for (int butterfly_i = 0; butterfly_i < g_stat_prime_factors[fact_cnt]; butterfly_i++) {
                            dst_idx = n1*n_cur + ni + butterfly_i*n2;
                            x_t[butterfly_i] = x[dst_idx]; // Temp save
                        }
                        // We have N^2 terms to add where N is the prime factor
                        // Since N sums into each N node of the sub transform
        #if LUT_BASED == 0
                        running_pow_i_2 = 1;
        #endif
                        for (int butterfly_i = 0; butterfly_i < g_stat_prime_factors[fact_cnt]; butterfly_i++) {
        #if LUT_BASED == 0
                            running_pow_j_3 = 1;
        #endif
                            for (int butterfly_j = 0; butterfly_j < g_stat_prime_factors[fact_cnt]; butterfly_j++) {
                                dst_idx = n1*n_cur + ni + butterfly_i*n2;
        #if LUT_BASED == 0
                                int red1 = barrett_reduce(running_pow_j_3 * running_pow_i_2);
                                int red2 = barrett_reduce(red2 * x_t[butterfly_j]);
                                x[dst_idx] =  barrett_reduce(x[dst_idx] + red2);
                                running_pow_j_3 = barrett_reduce(running_pow_j_3 * running_pow_j_2);
        #else // LUT
                                x[dst_idx] =  barrett_reduce(x[dst_idx] + x_t[butterfly_j] * g_stat_twiddle_pows[barret_reduce_pow((n_cur/$SUB_dim$)*ni*butterfly_j + (butterfly_i * $SUB_dim$/g_stat_prime_factors[fact_cnt]))]);
        #endif
                            }
        #if LUT_BASED == 0
                            running_pow_i_2 = barrett_reduce(running_pow_i_2 * base_i_1);
        #endif
                        }
                        free(x_t);
                    }
        #if LUT_BASED == 0
                    running_pow_j_2 = barrett_reduce(running_pow_j_2 * base_j_1);
        #endif
                }
                // Size for next iter
                n_cur = n2;
                fact_cnt++;
                if (fact_cnt >= $SUB_prime_factor_size$) {
                    break;
                }
                n2 /= (g_stat_prime_factors[fact_cnt]); // Logn
            }
            """

    def generate_target(self):
        # Use search space point to create code

        # Write header file constants
        with open(h_target_name, "w") as file:
            file.write("#ifndef NTT_H\n#define NTT_H\n")
            file.write("void ntt_impl(int *x, int *y);\n")
            if self.search_space_point.is_parallel:
                file.write("#include <omp.h>\n")
            file.write("#endif // NTT_H")

        # Write test file
        with open(c_test_name, "w") as file:
            file.write("#include \"ntt.h\"\n")
            temp_str = \
                    """
                    #include <stdlib.h>
                    #if DO_TIME
                    #include <sys/time.h>
                    #endif
                    """
            file.write(temp_str)
            file.write ("\n\nint main() {\n")
            temp_str = \
                    """
                    srand(time(NULL));
                    """
            file.write(temp_str)
            temp_str = \
                   f"""
                    int *x_fwd = malloc({self.ntt_parameters.n} * sizeof(int));
                    int *y_fwd = calloc({self.ntt_parameters.n}, sizeof(int));
                    int *y_inv = calloc({self.ntt_parameters.n}, sizeof(int));
                    for (int i 0; i < {self.ntt_parameters.n}; i++) {
                        x_fwd[i] = rand() % {self.ntt_parameters.mod};
                    }
                    """

        # Write source file constants
        with open(c_target_name, "w") as file:
            if self.search_space_point.type_str == "TYPE_N2":

            else: # TYPE_FAST

        # Write test file constants

    def __init__(self, search_space_point, ntt_parameters):
        self.search_space_point = search_space_point
        self.ntt_parameters = ntt_parameters

