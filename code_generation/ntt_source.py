# This file is to be used to build out the NTT implementation with
# Common blocks for each piece of the transform
# This will do pure code generation without many build flags in C
# Using as few build flags as possible to keep static code generation for
# the mixed radix implementation

import ntt_params as nt
import search_space as ss

# This class should be able to build out the source code given a set of NTT
# parameters and a search space object defining the point in the space
class Ntt_Source:
    c_test_name = "test_target.c"
    c_target_name = "ntt_target.c"
    h_target_name = "ntt_target.h"

    def generate_target(self):
        # Use search space point to create code

        # Write header file constants
        with open(self.h_target_name, "w") as file:
            file.write("#ifndef NTT_H\n#define NTT_H\n")
            if self.search_space_point.is_parallel:
                file.write("#include <omp.h>\n")
            # Inv flag only matters when we share an implementation between forward
            # and inverse transforms
            file.write("void ntt_impl(int *x, int *y, int inv);\n")
            file.write("void ntt_impl_inv(int *x, int *y, int inv);\n")
            file.write("#endif // NTT_H")

        # Write test file
        with open(self.c_test_name, "w") as file:
            file.write("#include \"ntt.h\"\n")
            temp_str = \
                   f"""
                    #include <stdlib.h>
                    #if DO_TIME
                    #include <sys/time.h>
                    #endif
                    """
            file.write(temp_str)
            temp_str = \
                   f"""
                    int ntt_check(int *x) {
                        int *y = calloc({self.ntt_parameters.n}, sizeof(int));
                        int *y_inv = calloc({self.ntt_parameters.n}, sizeof(int));
                        ntt_impl(x, y, 0);
                        ntt_impl_inv_(y, y_inv, 1);
                        int *orig_arr = x;
                        int *final_arr = y_inv;
                        int inv_n = modinv({self.ntt_parameters.n}, {self.ntt_parameters.mod});
                        for (int i = 0; i < {self.ntt_parameters.n}; i++) {
                            final_arr[i] = (final_arr[i] * inv_n) % {self.ntt_parameters.mod}
                            if (final_arr[i] != orig_arr[i]) {
                                return 0;
                            }
                        }
                        return 1;
                    }
                    """
            file.write("\n\nint main() {\n")
            temp_str = \
                   f"""
                    srand(time(NULL));
                    """
            file.write(temp_str)
            temp_str = \
                   f"""
                    printf("Running NTT type %d, N = %d, mod = %d, g = %d, ginv = %d\n", NTT_TYPE, {self.ntt_parameters.n}, {self.ntt_parameters.mod} {self.ntt_parameters.g}, modinv({self.ntt_parameters.g}, {self.ntt_parameters.mod}));
                    """
            file.write(temp_str)
            temp_str = \
                   f"""
                    int *x = malloc({self.ntt_parameters.n} * sizeof(int));
                    for (int i 0; i < {self.ntt_parameters.n}; i++) {
                        x[i] = rand() % {self.ntt_parameters.mod};
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
                    """
            file.write(temp_str)
        # End of Write test file


        # Always defined
        c_barrett_reduction = \
               f"""
                int barrett_reduce(int a) {
                  long int q, t;
                  q = ((long int) {self.ntt_parameters.barrett_r}) >> {self.ntt_parameters.barrett_k};
                  t = (long int) a - (q * {self.ntt_parameters.mod});
                  t = t >= (long int) {self.ntt_parameters.mod} ? t - (long int) {self.ntt_parameters.mod} : t;
                  return (int) t;
                }
                """

        c_mod_inv = \
               f"""
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
                """

        # Reduces the LUT mapping i*j instead of doing the mod operation
        c_power_barrett_reduction = \
               f"""
                int barrett_reduce_pow(int a) {
                  long int q, t;
                  q = ((long int) {self.ntt_parameters.barrett_r}) >> {self.ntt_parameters.barrett_k};
                  t = (long int) a - (q * {self.ntt_parameters.n});
                  t = t >= (long int) {self.ntt_parameters.n} ? t - (long int) {self.ntt_parameters.n} : t;
                  return (int) t;
                }
                """
        c_a_pow_b_mod_m = \
               f"""
                int a_pow_b_mod_m(int a, int b) {
                    int abm = 1;
                    for (int i = 0; i < b; i++) {
                        abm = barrett_reduce(abm * a);
                    }
                    return abm;
                }
                """
        # Populated and used by FAST MR
        c_prime_fact_lut = \
               f"""
                static const int g_stat_prime_factors[{len(ntt_parameters.prime_factorization)}] = {
                """
        for i in range(len(ntt_parameters.prime_factorization)-1):
            c_prime_fact_lut += f"\t{ntt_parameters.prime_factorization[i]}, \n"
        c_prime_fact_lut += f"\t{ntt_parameters.prime_factorization[len(ntt_parameters.prime_factorization)]}, \n"
        c_prime_fact_lut += \
                """
                }
                """
        # Defined and populated if LUT approach used
        c_static_pow_lut = \
               f"""
                #if LUT_BASED == 1
                static const int g_stat_twiddle_pows[{ntt_parameters.n}] = {
                """
        # Power lut entries
        running_pow = 1
        for i in range(ntt_parameters.n-1):
            c_static_pow_lut += f"\t{running_pow}, \n"
            running_pow = (running_pow * ntt_parameters.g) % ntt_parameters.mod
        c_static_pow_lut += f"\t{running_pow} \n"
        c_static_pow_lut += \
                """
                }
                """
        c_static_inv_pow_lut = \
               f"""
                static const int g_stat_inv_twiddle_pows[{ntt_parameters.n}] = {
                """
        # Power lut entries
        running_pow = 1
        for i in range(ntt_parameters.n-1):
            c_static_inv_pow_lut += f"\t{running_pow}, \n"
            running_pow = (running_pow * ntt_parameters.g_inv) % ntt_parameters.mod
        c_static_inv_pow_lut += f"\t{running_pow} \n"
        c_static_inv_pow_lut += \
                """
                }
                #endif // LUT_BASED
                """

        c_ntt_impl_tot_str = c_barrett_reduction + \
                             c_mod_inv + \
                             c_power_barrett_reduction + \
                             c_a_pow_b_mod_m + \
                             c_prime_fact_lut + \
                             c_static_pow_lut + \
                             c_static_inv_pow_lut

        # Always at least a forward implemenation
        # Build flags will insert ternary if needed
        c_ntt_str = generate_ntt_func(self.ntt_parameters, True)
        if (self.search_space_point.separate_inv_impl):
            inv_ntt_parameters = self.ntt_parameters
            # Obtain inverted generator
            inv_ntt_parameters.g = nt.modinv(self.ntt_parameters.g, self.ntt_parameters.mod)
            c_ntt_str += generate_ntt_func(inv_ntt_parameters, False)
        else:
            # If no separate inv impl then build a function wrapper for ntt_inv that goes to ntt_fwd
            c_ntt_str += \
                   f"""
                    void ntt_impl_inv(int *x, int *y, int inv) {
                        // The illusion of choice
                        ntt_impl(x, y, 1);
                    }
                    """
        c_ntt_impl_tot_str += c_ntt_str
        with open(self.c_target_name, "w") as file:
            file.write(c_ntt_impl_tot_str)

    # May be used to generate either 1 or 2 NTT functions based on
    # if we decide to do one function with switch statements or two entirely
    # different functions
    # RETURN: Ntt function implementation string
    def generate_ntt_func(self, ntt_parameters, forward_impl):
        # Build a big ol string
        ntt_impl_string = ""

        if (foward_impl):
            c_ntt_impl_func_proto = \
                   f"""
                    void ntt_impl(int *x, int *y) {
                    """
        else:
            c_ntt_impl_func_proto = \
                   f"""
                    void ntt_impl_inv(int *x, int *y) {
                    """
        ntt_impl_string += c_ntt_impl_func_proto

        c_N2 = \
               f"""
            #if LUT_BASED == 1
                int twiddle = 1;
                int twiddle_fact = 1; // Geometrically increasing factor in each loop iteration
                int temp;
            #endif
                for (int i = 0; i < {ntt_parameters.n}; i++) {
                    y[i] = 0;
                }
            #if PARALLEL == 1
                #pragma omp parallel for
                #endif
                for (int i = 0; i < {ntt_parameters.n}; i++) {
            #if LUT_BASED == 0
                    twiddle = 1;
            #endif
                    for (int j = 0; j < {ntt_parameters.n}; j++) {
            #if LUT_BASED == 0
                        twiddle = j == 0 ? 1 : barrett_reduce(twiddle * twiddle_fact);
                        temp = barrett_reduce(x[j] * twiddle);
                        y[i] = y[i] + temp > {ntt_parameters.mod} ? y[i] + temp - {ntt_parameters.mod} : y[i] + temp;
            #else // LUT_BASED == 1
                #if SEPARATE_INV_DEF == 1 // Need to pick between different g_stat vars
                    // This arg is forward_impl from python
                    #if {forward_impl}
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
                    twiddle_fact = barrett_reduce(twiddle_fact * {ntt_parameters.g});
                #else
                    // Use dynamic inv
                    twiddle_fact = barrett_reduce(twiddle_fact * (inv ? modinv({ntt_parameters.g}, {ntt_parameters.mod}), {ntt_parameters.g}));
                #endif
            #endif
                }
                """

        c_fast_fixed_r2 = \
               f"""
                int t1, t2;
                int twiddle1, twiddle2;
                int cur_size;
                int cur_idx;
            #if LUT_BASED == 0
                #if SEPARATE_INV_DEF == 1
                    int half_rot = a_pow_b_mod_m({ntt_parameters.g}, {ntt_parameters.n}>>1);
                #else
                    // Use dynamic inv
                    int half_rot = a_pow_b_mod_m((inv ? modinv({ntt_parameters.g}, {ntt_parameters.mod}), {ntt_parameters.g}), {ntt_parameters.n}>>1);
                #endif
                int stride_twiddle;
                int running_twiddle_1;
            #else
                #if SEPARATE_INV_DEF == 1
                    // This arg is forward_impl from python
                    #if {forward_impl}
                        int half_rot = g_stat_twiddle_pows[{ntt_parameters.n}>>1];
                    #else
                        int half_rot = g_stat_inv_twiddle_pows[{ntt_parameters.n}>>1];
                    #endif
                #else
                    int half_rot = inv ? g_stat_inv_twiddle_pows[{ntt_parameters.n}>>1] : g_stat_twiddle_pows[{ntt_parameters.n}>>1];
                #endif
            #endif
                for (int stride = {ntt_parameters.n}>>1; stride >= 1; stride >>= 1) { // log n
                    cur_size = stride<<1;
            #if LUT_BASED == 0
                #if SEPARATE_INV_DEF == 1
                    stride_twiddle = a_pow_b_mod_m({ntt_parameters.g}, stride);
                #else
                    stride_twiddle = a_pow_b_mod_m((inv ? modinv({ntt_parameters.g}, {ntt_parameters.mod}) : {ntt_parameters.g}), stride);
                #endif
                    running_twiddle_1 = 1;
            #endif
                    // For each of the "sub-transforms" in the CT butterfly
                    for (int sub_trans_idx = 0; sub_trans_idx < {ntt_parameters.n}/cur_size; sub_trans_idx++) {
                        // We take steps within our sub transform
                        for (int step = 0; step < stride; step++) {
                            cur_idx = sub_trans_idx*cur_size + step;
            #if LUT_BASED == 0
                            twiddle1 = running_twiddle_1;
                            running_twiddle_1 = barrett_reduce(stride_twiddle * running_twiddle_1);
                            // Twiddle 2 is offset half a rotation from twiddle 1
                            twiddle2 = barrett_reduce(twiddle1 * half_rot);
            #else // LUT
                #if SEPARATE_INV_DEF == 1
                    #if {forward_impl}
                            twiddle1 = g_stat_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride)];
                            twiddle2 = g_stat_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride + {ntt_parameters.n}>>1)];
                    #else
                            twiddle1 = g_stat_inv_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride)];
                            twiddle2 = g_stat_inv_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride + {ntt_parameters.n}>>1)];
                    #endif
                #else
                            twiddle1 = inv ? g_stat_inv_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride)] : g_stat_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride)];
                            twiddle2 = inv ? g_stat_inv_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride)] : g_stat_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride + {ntt_parameters.n}>>1)];
                #endif
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
               f"""
                int t;
                int twiddle;
                int n_cur = {ntt_parameters.n};
                int orig_size = {ntt_parameters.n};
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
                #if SEPARATE_INV_DEF == 1
                        base_j_1 = a_pow_b_mod_m({ntt_parameters.g}, n_cur/{ntt_parameters.n});
                        base_i_1 = a_pow_b_mod_m({ntt_parameters.g}, n_cur/g_stat_prime_factors[fact_cnt]);
                #else
                        base_j_1 = a_pow_b_mod_m((inv ? modinv({ntt_parameters.g}, {ntt_parameters.mod}) : {ntt_parameters.g}), n_cur/{ntt_parameters.n});
                        base_i_1 = a_pow_b_mod_m((inv ? modinv({ntt_parameters.g}, {ntt_parameters.mod}) : {ntt_parameters.g}), n_cur/g_stat_prime_factors[fact_cnt]);
                #endif
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
                #if SEPARETE_INV_DEF == 1
                    #if {forward_impl}
                                    x[dst_idx] =  barrett_reduce(x[dst_idx] + x_t[butterfly_j] * g_stat_twiddle_pows[barret_reduce_pow((n_cur/{ntt_parameters.n})*ni*butterfly_j + (butterfly_i * {ntt_parameters.n}/g_stat_prime_factors[fact_cnt]))]);
                    #else
                                    x[dst_idx] =  barrett_reduce(x[dst_idx] + x_t[butterfly_j] * g_stat_inv_twiddle_pows[barret_reduce_pow((n_cur/{ntt_parameters.n})*ni*butterfly_j + (butterfly_i * {ntt_parameters.n}/g_stat_prime_factors[fact_cnt]))]);
                    #endif
                #else
                                    x[dst_idx] =  barrett_reduce(x[dst_idx] + x_t[butterfly_j] * (inv ? g_stat_inv_twiddle_pows[barret_reduce_pow((n_cur/{ntt_parameters.n})*ni*butterfly_j + (butterfly_i * {ntt_parameters.n}/g_stat_prime_factors[fact_cnt]))] : g_stat_twiddle_pows[barret_reduce_pow((n_cur/{ntt_parameters.n})*ni*butterfly_j + (butterfly_i * {ntt_parameters.n}/g_stat_prime_factors[fact_cnt]))])));
                #endif
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
                    if (fact_cnt >= {len(ntt_parameters.prime_factorization)}) {
                        break;
                    }
                    n2 /= (g_stat_prime_factors[fact_cnt]); // Logn
                }
                """

        if self.search_space_point.type_str == "TYPE_N2":
            ntt_impl_string += c_N2
        else: # TYPE_FAST
            if self.search_space_point.fixed_radix:
                ntt_impl_string += c_fast_fixed_r2
            else:
                ntt_impl_string += c_fast_mr


        c_ntt_impl_func_end = \
               f"""
                } // End ntt_impl
                """
        ntt_impl_string += c_ntt_impl_func_end
        return ntt_impl_string

    def __init__(self, search_space_point, ntt_parameters):
        self.search_space_point = search_space_point
        self.ntt_parameters = ntt_parameters

