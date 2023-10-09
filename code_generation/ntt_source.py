# This file is to be used to build out the NTT implementation with
# Common blocks for each piece of the transform
# This will do pure code generation without many build flags in C
# Using as few build flags as possible to keep static code generation for
# the mixed radix implementation

import ntt_params as nt
import search_space as ss
import math
import pdb

# This class should be able to build out the source code given a set of NTT
# parameters and a search space object defining the point in the space
class Ntt_Source:
    c_test_name = "main.c"
    c_target_name = "ntt_target.c"
    h_target_name = "ntt_target.h"
    sub_pc = "#"
    sub_while = "while"
    sub_oc = "{"
    sub_cc = "}"
    sub_co = "//"
    sub_oco = "/*"
    sub_cco = "*/"
    sub_tab = "\t"
    sub_nl = "\\n"
    # 8x32 bit integers in a 256 avx unit
    avx_reg_width = 8;

    def generate_target(self):
        # Use search space point to create code

        # Write header file constants
        with open(self.h_target_name, "w") as file:
            file.write("#ifndef NTT_H\n#define NTT_H\n")
            # TODO stdlib not needed?
            file.write("#include <stdlib.h>\n")
            if self.search_space_point.is_omp:
                file.write("#include <omp.h>\n")
            if self.search_space_point.is_avx:
                file.write("#include <immintrin.h>\n")
            temp_str = \
"""
// Constants
#define FAIL_PRINT_INFO 1
"""
            # For recursive implementations we need to pass the size
            self.recursive_str = ""
            self.recursive_call_str = ""
            if (self.search_space_point.is_recursive):
                self.recursive_str += "int n, int n0,"
                self.recursive_call_str = f"{self.ntt_parameters.n}, {self.ntt_parameters.n}"
            file.write(temp_str)
            # Inv flag only matters when we share an implementation between forward
            # and inverse transforms
            file.write(f"void ntt_impl(int *x, int *y, {self.recursive_str} int inv);\n")
            file.write(f"void ntt_impl_inv(int *x, int *y, {self.recursive_str} int inv);\n")
            file.write(f"#endif {self.sub_co} NTT_H \n")

        # Write test file
        with open(self.c_test_name, "w") as file:
            file.write("#include \"ntt_target.h\"\n")
            file.write("#include <string.h>\n")
            temp_str = \
f"""
{self.sub_pc}include <stdlib.h>
{self.sub_pc}include <sys/time.h>
{self.sub_pc}include <stdio.h>
"""
            file.write(temp_str)
            temp_str = \
f"""
int modinv(int a, int m) {self.sub_oc}
    int q, t, r, newt, newr, tempt, tempr;
    t = 0;
    newt = 1;
    r = m;
    newr = a;
    {self.sub_while} (newr != 0) {self.sub_oc}
        q = r / newr;
        tempt = newt;
        tempr = newr;
        newt = t - q*newt;
        newr = r - q*newr;
        t = tempt;
        r = tempr;
    {self.sub_cc}
    if (t < 0) {self.sub_oc}
        t += m;
    {self.sub_cc}
    return t;
{self.sub_cc}
"""
            file.write(temp_str)
            temp_str = \
f"""
int ntt_check(int *x, int *y, int *x_inv, int *y_inv) {self.sub_oc}
    ntt_impl(x, y, {self.recursive_call_str}, 0);
    ntt_impl_inv(y, y_inv, {self.recursive_call_str}, 1);
    x_inv = y;
    int *orig_arr = x;
    int *final_arr = y_inv;
    int inv_n = modinv({self.ntt_parameters.n}, {self.ntt_parameters.mod});
    for (int i = 0; i < {self.ntt_parameters.n}; i++) {self.sub_oc}
        final_arr[i] = (final_arr[i] * inv_n) % {self.ntt_parameters.mod};
        if (final_arr[i] != orig_arr[i]) {self.sub_oc}
            {self.sub_co} TODO Temp skip FAST comparison
{self.sub_pc}if {int(self.search_space_point.type_str != "TYPE_FAST")}
            return 0;
{self.sub_pc}endif
        {self.sub_cc}
    {self.sub_cc}
    return 1;
{self.sub_cc}
"""
            file.write(temp_str)
            file.write("\n\nint main() {\n")
            temp_str = \
f"""
    srand(time(NULL));
"""
            file.write(temp_str)
            temp_str = \
f"""
    printf("Running NTT N = %d, mod = %d, g = %d, ginv = %d{self.sub_nl}", {self.ntt_parameters.n}, {self.ntt_parameters.mod}, {self.ntt_parameters.g}, {self.ntt_parameters.g_inv});
"""
            file.write(temp_str)

            # TODO how aggressive to go with threading here?
            if self.search_space_point.is_omp:
                temp_str = f"\tomp_set_num_threads(omp_get_max_threads());\n"
                file.write(temp_str)

            temp_str = \
f"""
    int *x = malloc({self.ntt_parameters.n} * sizeof(int));
    int *y = malloc({self.ntt_parameters.n} * sizeof(int));
    int *x_inv = malloc({self.ntt_parameters.n} * sizeof(int));
    int *y_inv = malloc({self.ntt_parameters.n} * sizeof(int));
    for (int i = 0; i < {self.ntt_parameters.n}; i++) {self.sub_oc}
        {self.sub_co} x[i] = rand() % {self.ntt_parameters.mod};
        x[i] = i;
    {self.sub_cc}
{self.sub_pc}if DO_TIME
    struct timeval start, end;
    double elapsed_time;
    gettimeofday(&start, NULL);
{self.sub_pc}endif
    int check_res = ntt_check(x, y, x_inv, y_inv);
{self.sub_pc}if DO_TIME
    gettimeofday(&end, NULL);
    elapsed_time = (end.tv_sec - start.tv_sec)*1e6 + (end.tv_usec - start.tv_usec);
    printf("TIME: %0.0f us{self.sub_nl}", elapsed_time);
{self.sub_pc}endif
    if (!check_res) {self.sub_oc}
        {self.sub_pc}if FAIL_PRINT_INFO
        printf("FWD IN:{self.sub_nl}");
        for (int i = 0; i < {self.ntt_parameters.n}; i++) {self.sub_oc}
            printf("%d, ", x[i]);
        {self.sub_cc}
        printf("{self.sub_nl}FWD OUT:{self.sub_nl}");
        for (int i = 0; i < {self.ntt_parameters.n}; i++) {self.sub_oc}
            printf("%d, ", y[i]);
        {self.sub_cc}
        printf("{self.sub_nl}INV(FWD):{self.sub_nl}");
        for (int i = 0; i < {self.ntt_parameters.n}; i++) {self.sub_oc}
            printf("%d, ", y_inv[i]);
        {self.sub_cc}
        printf("{self.sub_nl} FAIL{self.sub_nl}");
        {self.sub_pc}else
        printf("FAIL{self.sub_nl}");
        {self.sub_pc}endif
    {self.sub_cc} else {self.sub_oc}
        printf("PASS{self.sub_nl}");
    {self.sub_cc}
{self.sub_cc}
"""
            file.write(temp_str)
        # End of Write test file


        # Always defined
        c_barrett_reduction = \
f"""
int barrett_reduce(int a) {self.sub_oc}
  long int q, t;
  q = ((long int) a*{self.ntt_parameters.barrett_r}) >> {self.ntt_parameters.barrett_k};
  t = (long int) a - (q * {self.ntt_parameters.mod});
  t = t >= (long int) {self.ntt_parameters.mod} ? t - (long int) {self.ntt_parameters.mod} : t;
  return (int) t;
{self.sub_cc}
"""

        c_barrett_reduction_avx = ""
        if self.search_space_point.is_avx:
# TODO what to do about type extension here if we go from int to long int?? With a big modulus
            c_barrett_reduction_avx = \
f"""
__m256i barrett_reduce_avx(__m256i a) {self.sub_oc}
  __m256i barrett_r_avx   = _mm256_set1_epi32({self.ntt_parameters.barrett_r});
  __m256i mod_avx         = _mm256_set1_epi32({self.ntt_parameters.mod});
  __m256i q, t;

  {self.sub_co} Calculate q = (a * barrett_r) >> barrett_k;
  q = _mm256_mullo_epi32(a, barrett_r_avx);
  q = _mm256_srli_epi32(q, {self.ntt_parameters.barrett_k});

  {self.sub_co} Calculate t = a - (q * mod);
  t = _mm256_mullo_epi32(q, mod_avx);
  t = _mm256_sub_epi32(a, t);

  {self.sub_co} Check if t is greater than or equal to mod
  __m256i cmp = _mm256_cmpgt_epi32(t, mod_avx);
  t = _mm256_sub_epi32(t, _mm256_and_si256(cmp, mod_avx));
  return t;
{self.sub_cc}
"""

        # Reduces the LUT mapping i*j instead of doing the mod operation
        c_power_barrett_reduction = \
f"""
int barrett_reduce_pow(int a) {self.sub_oc}
  long int q, t;
  q = ((long int) a*{self.ntt_parameters.barrett_r_pow}) >> {self.ntt_parameters.barrett_k_pow};
  t = (long int) a - (q * {self.ntt_parameters.n});
  t = t >= (long int) {self.ntt_parameters.n} ? t - (long int) {self.ntt_parameters.n} : t;
  return (int) t;
{self.sub_cc}
"""
        c_a_pow_b_mod_m = \
f"""
int a_pow_b_mod_m(int a, int b) {self.sub_oc}
    int abm = 1;
    for (int i = 0; i < b; i++) {self.sub_oc}
        abm = barrett_reduce(abm * a);
    {self.sub_cc}
    return abm;
{self.sub_cc}
"""
        # Populated and used by FAST MR
        if self.search_space_point.type_str == "TYPE_FAST" and self.search_space_point.mixed_radix:
            c_prime_fact_lut = \
f"""
static const int g_stat_prime_factors[{len(self.ntt_parameters.prime_factorization)}] = {self.sub_oc}
"""
            for i in range(len(self.ntt_parameters.prime_factorization)-1):
                c_prime_fact_lut += f"\t{self.ntt_parameters.prime_factorization[i]}, \n"
            c_prime_fact_lut += f"\t{self.ntt_parameters.prime_factorization[len(self.ntt_parameters.prime_factorization)-1]}\n"
            c_prime_fact_lut += \
f"""
{self.sub_cc};
"""
        else:
            # Not defined for non-mixed
            c_prime_fact_lut = ""

        if self.search_space_point.is_lut:
            # Defined and populated if LUT approach used
            c_static_pow_lut = \
f"""
static const int g_stat_twiddle_pows[{self.ntt_parameters.n}] = {self.sub_oc}
"""
            # Power lut entries
            running_pow = 1
            for i in range(self.ntt_parameters.n-1):
                c_static_pow_lut += f"\t{running_pow}, \n"
                running_pow = (running_pow * self.ntt_parameters.g) % self.ntt_parameters.mod
            c_static_pow_lut += f"\t{running_pow} \n"
            c_static_pow_lut += \
f"""
{self.sub_cc};
"""
            c_static_inv_pow_lut = \
f"""
static const int g_stat_inv_twiddle_pows[{self.ntt_parameters.n}] = {self.sub_oc}
"""
            # Power lut entries
            running_pow = 1
            for i in range(self.ntt_parameters.n-1):
                c_static_inv_pow_lut += f"\t{running_pow}, \n"
                running_pow = (running_pow * nt.modinv(self.ntt_parameters.g, self.ntt_parameters.mod)) % self.ntt_parameters.mod
            c_static_inv_pow_lut += f"\t{running_pow} \n"
            c_static_inv_pow_lut += \
f"""
{self.sub_cc};
"""
        else:
            c_static_pow_lut = ""
            c_static_inv_pow_lut = ""

        c_ntt_impl_tot_str = c_barrett_reduction + \
                             c_barrett_reduction_avx + \
                             c_power_barrett_reduction + \
                             c_a_pow_b_mod_m + \
                             c_prime_fact_lut + \
                             c_static_pow_lut + \
                             c_static_inv_pow_lut

        # Always at least a forward implemenation
        # Build flags will insert ternary if needed
        c_ntt_str = self.generate_ntt_func(self.ntt_parameters, True)
        if (self.search_space_point.separate_inv_impl):
            inv_ntt_parameters = self.ntt_parameters
            # Obtain inverted generator
            inv_ntt_parameters.g = nt.modinv(self.ntt_parameters.g, self.ntt_parameters.mod)
            c_ntt_str += self.generate_ntt_func(inv_ntt_parameters, False)
        else:
            # If no separate inv impl then build a function wrapper for ntt_inv that goes to ntt_fwd
            c_ntt_str += \
f"""
void ntt_impl_inv(int *x, int *y, int inv) {self.sub_oc}
    {self.sub_co} The illusion of choice
    ntt_impl(x, y, 1);
{self.sub_cc}
"""
        c_ntt_impl_tot_str += c_ntt_str
        with open(self.c_target_name, "w") as file:
            file.write("#include \"ntt_target.h\"\n")
            file.write(c_ntt_impl_tot_str)

    # May be used to generate either 1 or 2 NTT functions based on
    # if we decide to do one function with switch statements or two entirely
    # different functions
    # RETURN: Ntt function implementation string
    def generate_ntt_func(self, ntt_parameters, forward_impl):
        # Build a big ol string
        ntt_impl_string = ""

        c_ntt_impl_func_proto =  ""
        if (forward_impl):
            c_ntt_impl_func_proto = \
f"""ntt_impl(int *x, int *y, {self.recursive_str} int inv)"""
        else:
            c_ntt_impl_func_proto = \
f"""ntt_impl_inv(int *x, int *y, {self.recursive_str} int inv)"""
        ntt_impl_string += "void " + c_ntt_impl_func_proto + " {\n"

        ############################################################
        # String substitutions into general loop structure for N2
        ############################################################
        c_N2_omp_pragma = ""
        if self.search_space_point.is_omp:
            c_N2_omp_pragma = \
f"""
{self.sub_pc}pragma omp parallel for
"""
        # Initialize AVX sums fo rthe inner loop
        c_N2_avx_init = ""
        c_N2_inner_loop_structure = ""
        c_N2_avx_reg_accum = ""
        c_N2_avx_parallel_init = ""
        if self.search_space_point.is_avx:
            if self.search_space_point.is_omp:
                c_N2_avx_parallel_init = \
f"""
        __m256i avx_result, avx_reduction, vec_a, vec_b;
        int avx_twiddle_arr[{self.avx_reg_width}];
        int hsum[8];
        int temp_sum;
        char avx_load_cntr = 0;
"""
            else:
                c_N2_avx_init = \
f"""
    __m256i avx_result, avx_reduction, vec_a, vec_b;
    int avx_twiddle_arr[{self.avx_reg_width}];
    int hsum[8];
    int temp_sum;
    char avx_load_cntr = 0;
"""
            c_N2_avx_reg_accum = \
f"""
            {self.sub_co} If on last of a block of 8 or if on last iteration of loop for non multiple of 8 dimension
            if (avx_load_cntr == {self.avx_reg_width}) {self.sub_oc}
                // Load AVX
                vec_a = _mm256_loadu_si256((__m256i*)avx_twiddle_arr);
                vec_b = _mm256_loadu_si256((__m256i*)&x[j - 7]);
                // Perform AVX operation
                avx_result = _mm256_mullo_epi32(vec_a, vec_b);
                // Perform AVX reduction
                avx_result = barrett_reduce_avx(avx_result);
                _mm256_storeu_si256((__m256i*)hsum, avx_result);
                temp_sum = 0;
                temp_sum += hsum[0];
                temp_sum += hsum[1];
                temp_sum += hsum[2];
                temp_sum += hsum[3];
                temp_sum += hsum[4];
                temp_sum += hsum[5];
                temp_sum += hsum[6];
                temp_sum += hsum[7];
                y[i] = y[i] + temp_sum;
                // Reduce vector component-wise sum
                y[i] = barrett_reduce(y[i]);
                avx_load_cntr = 0;
            {self.sub_cc}
"""
        else:
            c_N2_inner_loop_structure = \
f"""
"""

        c_N2_no_lut_twiddle_def = ""
        c_N2_inner_twiddle_init = ""
        c_N2_inner_impl = ""
        c_N2_outer_twiddle_incr = ""

        if not self.search_space_point.is_lut:
            c_N2_inner_twiddle_init = \
f"""
        twiddle = 1;
"""
            c_N2_no_lut_twiddle_def = \
f"""
    int twiddle = 1;
    int twiddle_fact = 1; {self.sub_co} Geometrically increasing factor in each loop iteration
    int temp;
"""
            if self.search_space_point.is_avx:
                c_N2_inner_impl = \
f"""
            twiddle = j == 0 ? 1 : barrett_reduce(twiddle * twiddle_fact);
            avx_twiddle_arr[avx_load_cntr++] = twiddle;
"""
            else:
                c_N2_inner_impl = \
f"""
            twiddle = j == 0 ? 1 : barrett_reduce(twiddle * twiddle_fact);
            temp = barrett_reduce(x[j] * twiddle);
            y[i] = y[i] + temp > {ntt_parameters.mod} ? y[i] + temp - {ntt_parameters.mod} : y[i] + temp;
"""
            if self.search_space_point.separate_inv_impl:
                c_N2_outer_twiddle_incr = \
f"""
        twiddle_fact = barrett_reduce(twiddle_fact * {ntt_parameters.g});
"""
                
            else:
                c_N2_outer_twiddle_incr = \
f"""
        twiddle_fact = barrett_reduce(twiddle_fact * (inv ? {ntt_parameters.g_inv} : {ntt_parameters.g}));
"""
        # LUT BASED
        else:
            if self.search_space_point.separate_inv_impl:
                if forward_impl:
                    if self.search_space_point.is_avx:
                        c_N2_inner_impl = \
f"""
            avx_twiddle_arr[avx_load_cntr++] = g_stat_twiddle_pows[barrett_reduce_pow(i*j)];
"""
                    else:
                        c_N2_inner_impl = \
f"""
            y[i] = barrett_reduce(y[i] + x[j] * g_stat_twiddle_pows[barrett_reduce_pow(i*j)]);
"""
                else:
                    if self.search_space_point.is_avx:
                        c_N2_inner_impl = \
f"""
            avx_twiddle_arr[avx_load_cntr++] = g_stat_inv_twiddle_pows[barrett_reduce_pow(i*j)];
"""
                    else:
                        c_N2_inner_impl = \
f"""
            y[i] = barrett_reduce(y[i] + x[j] * g_stat_inv_twiddle_pows[barrett_reduce_pow(i*j)]);
"""
            else:
                if self.search_space_point.is_avx:
                    c_N2_inner_impl = \
f"""
            avx_twiddle_arr[avx_load_cntr++] = inv ? g_stat_inv_twiddle_pows[barrett_reduce_pow(i*j)] : g_stat_twiddle_pows[barrett_reduce_pow(i*j)];
"""
                else:
                    c_N2_inner_impl = \
f"""
            y[i] = barrett_reduce(y[i] + x[j] * (inv ? g_stat_inv_twiddle_pows[barrett_reduce_pow(i*j)] : g_stat_twiddle_pows[barrett_reduce_pow(i*j)]));
"""
        ############################################################


        c_N2 = \
f"""
    for (int i = 0; i < {ntt_parameters.n}; i++) {self.sub_oc}
        y[i] = 0;
    {self.sub_cc}
    {c_N2_no_lut_twiddle_def}
    {c_N2_avx_init}
    {c_N2_omp_pragma}
    for (int i = 0; i < {ntt_parameters.n}; i++) {self.sub_oc}
        {c_N2_avx_parallel_init}
        {c_N2_inner_twiddle_init}
        for (int j = 0; j < {ntt_parameters.n}; j++) {self.sub_oc}
            {c_N2_inner_impl}
            {c_N2_avx_reg_accum}
        {self.sub_cc}
        {c_N2_outer_twiddle_incr}
    {self.sub_cc}
"""
        ############################################################
        # String substitutions into general loop structure for N2
        ############################################################
        c_R2_half_rot_init = ""
        c_R2_stride_twiddle = ""
        c_R2_running_twiddle_1_init = ""
        c_R2_twiddle1_twiddle2_assign = ""

        if not self.search_space_point.is_lut:
            c_R2_running_twiddle_1_init = \
f"""
        running_twiddle_1 = 1;
"""
            c_R2_twiddle1_twiddle2_assign = \
f"""
                twiddle1 = running_twiddle_1;
                running_twiddle_1 = barrett_reduce(stride_twiddle * running_twiddle_1);
                {self.sub_co} Twiddle 2 is offset half a rotation from twiddle 1
                twiddle2 = barrett_reduce(twiddle1 * half_rot);
"""
            if self.search_space_point.separate_inv_impl:
                c_R2_half_rot_init = \
f"""
    int half_rot = {nt.a_pow_b_mod_m(ntt_parameters.g, ntt_parameters.n>>1, ntt_parameters.mod)};
    int stride_twiddle;
    int running_twiddle_1;
"""
                c_R2_stride_twiddle = \
f"""
        stride_twiddle = a_pow_b_mod_m({ntt_parameters.g}, stride);
"""
            else:
                c_R2_half_rot_init = \
f"""
    int half_rot = inv ? {nt.a_pow_b_mod_m(ntt_parameters.g_inv, ntt_parameters.n>>1, ntt_parameters.mod)} : {nt.a_pow_b_mod_m(ntt_parameters.g, ntt_parameters.n>>1, ntt_parameters.mod)};
    int stride_twiddle;
    int running_twiddle_1;
"""
                c_R2_stride_twiddle = \
f"""
        stride_twiddle = a_pow_b_mod_m((inv ? {ntt_parameters.g_inv} : {ntt_parameters.g}), stride);
"""

        else:
            if self.search_space_point.separate_inv_impl:
                if forward_impl:
                    c_R2_half_rot_init = \
f"""
    int half_rot = g_stat_twiddle_pows[{ntt_parameters.n}>>1];
"""
                    c_R2_twiddle1_twiddle2_assign = \
f"""
                twiddle1 = g_stat_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride)];
                twiddle2 = g_stat_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride + {ntt_parameters.n}>>1)];
"""

                else:
                    c_R2_half_rot_init = \
f"""
    int half_rot = g_stat_inv_twiddle_pows[{ntt_parameters.n}>>1];
"""
                    c_R2_twiddle1_twiddle2_assign = \
f"""
                twiddle1 = g_stat_inv_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride)];
                twiddle2 = g_stat_inv_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride + {ntt_parameters.n}>>1)];
"""

            else:
                c_R2_half_rot_init = \
f"""
    int half_rot = inv ? g_stat_inv_twiddle_pows[{ntt_parameters.n}>>1] : g_stat_twiddle_pows[{ntt_parameters.n}>>1];
"""
                c_R2_twiddle1_twiddle2_assign = \
f"""
                twiddle1 = inv ? g_stat_inv_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride)] : g_stat_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride)];
                twiddle2 = inv ? g_stat_inv_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride)] : g_stat_twiddle_pows[barrett_reduce_pow(sub_trans_idx*stride + {ntt_parameters.n}>>1)];
"""

        ############################################################

        c_fast_fixed_r2 = \
f"""
    int t1, t2;
    int twiddle1, twiddle2;
    int cur_size;
    int cur_idx;
    {self.sub_co} Copy x to y then do inplace
    for (int i = 0; i < {ntt_parameters.n}; i++) {self.sub_oc}
        y[i] = x[i];
    {self.sub_cc}
    {c_R2_half_rot_init}
    for (int stride = {ntt_parameters.n}>>1; stride >= 1; stride >>= 1) {self.sub_oc}
        cur_size = stride<<1;
        {c_R2_stride_twiddle}
        {c_R2_running_twiddle_1_init}
        {self.sub_co} For each of the "sub-transforms" in the CT butterfly
        for (int sub_trans_idx = 0; sub_trans_idx < {ntt_parameters.n}/cur_size; sub_trans_idx++) {self.sub_oc}
            {self.sub_co} We take steps within our sub transform
            for (int step = 0; step < stride; step++) {self.sub_oc}
                cur_idx = sub_trans_idx*cur_size + step;
                {c_R2_twiddle1_twiddle2_assign}
                y[cur_idx + stride] = barrett_reduce(y[cur_idx] + y[cur_idx + stride] * twiddle2);
                y[cur_idx] = barrett_reduce(y[cur_idx] + y[cur_idx + stride] * twiddle1);
            {self.sub_cc}
        {self.sub_cc}
    {self.sub_cc}
"""

        ############################################################
        # String substitutions into general loop structure for 
        ############################################################

	    # Doesn't make sense to do mixed-radix recursive, since by definition
	    # Recursive is more memory intensive and thus

        c_r2_rec_func_call_0 = ""
        c_r2_rec_func_call_1 = ""
        if (forward_impl):
            c_r2_rec_func_call_0 = \
f"""ntt_impl(x_e, y_e, n>>1, n0, inv)"""
            c_r2_rec_func_call_1 = \
f"""ntt_impl(x_o, y_o, n>>1, n0, inv)"""
        else:
            c_r2_rec_func_call_0 = \
f"""ntt_impl_inv(x_e, y_e, n>>1, n0, inv)"""
            c_r2_rec_func_call_1 = \
f"""ntt_impl_inv(x_o, y_o, n>>1, n0, inv)"""

        c_r2_rec_butterfly_twiddle_1 = ""
        c_r2_rec_butterfly_twiddle_1_init = ""
        c_r2_rec_butterfly_twiddle_1_post_mult = ""

        if not self.search_space_point.is_lut:

            c_r2_rec_butterfly_twiddle_1_init = \
f"""
        int twiddle = 1;
        int adjusted_gen = a_pow_b_mod_m({ntt_parameters.g}, n0/n);
"""
            c_r2_rec_butterfly_twiddle_1 = \
f"twiddle"
            c_r2_rec_butterfly_twiddle_1_post_mult = \
f"""
            twiddle = barrett_reduce(twiddle * adjusted_gen);
"""

        else:
            if self.search_space_point.separate_inv_impl:
                if forward_impl:
                    c_r2_rec_butterfly_twiddle_1 = \
f"g_stat_twiddle_pows[barrett_reduce_pow((n0/n)*i)]"
                else:
                    c_r2_rec_butterfly_twiddle_1 = \
f"g_stat_inv_twiddle_pows[barrett_reduce_pow((n0/n)*i)]"
            else:
                c_r2_rec_butterfly_twiddle_1 = \
f"(inv ? g_stat_twiddle_pows[barrett_reduce_pow((n0/n)*i)] : g_stat_inv_twiddle_pows[barrett_reduce_pow((n0/n)*i)])"

        c_fast_fixed_r2_recursive = \
f"""
    if (n <= {self.search_space_point.recursive_base_case}) {self.sub_oc}
        {self.sub_co} Assume y allocated by caller
        {c_N2_no_lut_twiddle_def}
        {c_N2_avx_init}
        {c_N2_omp_pragma}
        for (int i = 0; i < n; i++) {self.sub_oc}
            {c_N2_avx_parallel_init}
            {c_N2_inner_twiddle_init}
            for (int j = 0; j < n; j++) {self.sub_oc}
                {self.sub_co} TODO below should have n0/n generator ratio
                {c_N2_inner_impl}
                {c_N2_avx_reg_accum}
            {self.sub_cc}
            {c_N2_outer_twiddle_incr}
        {self.sub_cc}
    {self.sub_cc} else {self.sub_oc}
        int * x_e = malloc(n>>1 * sizeof(int));
        int * x_o = malloc(n>>1 * sizeof(int));
        int * y_e = calloc(n>>1 , sizeof(int));
        int * y_o = calloc(n>>1 , sizeof(int));
        for (int j = 0; j < n>>1; j++) {self.sub_oc}
            x_e[j] = x[j<<1 + 0];
            x_o[j] = x[j<<1 + 1];
        {self.sub_cc}
        {self.sub_co} Recursive calls followed by twiddles
	    {c_r2_rec_func_call_0};
	    {c_r2_rec_func_call_1};
        {c_r2_rec_butterfly_twiddle_1_init}
        {self.sub_co} TODO should this be pragma'd?
        {c_N2_omp_pragma}
        for (int i = 0; i < n>>1; i++) {self.sub_oc}
            int sum_0 = y_e[i] + y_o[i];
            int sum_1 = y_e[i] + barrett_reduce({c_r2_rec_butterfly_twiddle_1}*y_o[i]);
            y[i]        = sum_0 >= {ntt_parameters.mod} ? sum_0 - {ntt_parameters.mod} : sum_0;
            y[i + n>>1] = sum_1 >= {ntt_parameters.mod} ? sum_1 - {ntt_parameters.mod} : sum_1;
            {c_r2_rec_butterfly_twiddle_1_post_mult}
        {self.sub_cc}
        {self.sub_co} free(x_e);
        {self.sub_co} free(x_o);
        {self.sub_co} free(y_e);
        {self.sub_co} free(y_o);
    {self.sub_cc}
"""

        ############################################################
        # String substitutions into general loop structure for 
        ############################################################

        c_MR_pow_defs = ""
        c_MR_base_ij_set = ""
        c_MR_common_pow_j_2_init = ""
        c_MR_common_pow_j_2_assn = ""
        c_MR_common_pow_i_2_init = ""
        c_MR_common_pow_i_2_assn = ""
        c_MR_common_pow_j_3_init = ""
        c_MR_assn_y = ""

        if not self.search_space_point.is_lut:
            c_MR_common_pow_j_2_init = \
f"""
            running_pow_j_2 = 1;
"""
            c_MR_common_pow_j_2_assn = \
f"""
            running_pow_j_2 = barrett_reduce(running_pow_j_2 * base_j_1);
"""
            c_MR_common_pow_i_2_init = \
f"""
                running_pow_i_2 = 1;
"""
            c_MR_common_pow_i_2_assn = \
f"""
                    running_pow_i_2 = barrett_reduce(running_pow_i_2 * base_i_1);
"""
            c_MR_common_pow_j_3_init = \
f"""
                    running_pow_j_3 = 1;
"""
            c_MR_pow_defs = \
f"""
    int base_j_1; {self.sub_co} With n_cur/DIM
    int running_pow_j_2; {self.sub_co} With above ^ni
    int running_pow_j_3; {self.sub_co} With above ^butterfly_j
    int base_i_1; {self.sub_co} With dim/g_stat_prime_factors[fact_cnt]
    int running_pow_i_2; {self.sub_co} With above ^butterfly_i
"""
            c_MR_assn_y = \
f"""
                        int red1 = barrett_reduce(running_pow_j_3 * running_pow_i_2);
                        int red2 = barrett_reduce(red2 * y_t[butterfly_j]);
                        y[dst_idx] =  barrett_reduce(y[dst_idx] + red2);
                        running_pow_j_3 = barrett_reduce(running_pow_j_3 * running_pow_j_2);
"""
            if self.search_space_point.separate_inv_impl:
                c_MR_base_ij_set = \
f"""
            base_j_1 = a_pow_b_mod_m({ntt_parameters.g}, n_cur/{ntt_parameters.n});
            base_i_1 = a_pow_b_mod_m({ntt_parameters.g}, n_cur/g_stat_prime_factors[fact_cnt]);
"""
            else:
                c_MR_base_ij_set = \
f"""
            base_j_1 = a_pow_b_mod_m((inv ? {ntt_parameters.g_inv} : {ntt_parameters.g}), n_cur/{ntt_parameters.n});
            base_i_1 = a_pow_b_mod_m((inv ? {ntt_parameters.g_inv} : {ntt_parameters.g}), n_cur/g_stat_prime_factors[fact_cnt]);
"""
        else:
            if self.search_space_point.separate_inv_impl:
                if forward_impl:
                    c_MR_assn_y = \
f"""
                        y[dst_idx] =  barrett_reduce(y[dst_idx] + y_t[butterfly_j] * g_stat_twiddle_pows[barrett_reduce_pow((n_cur/{ntt_parameters.n})*ni*butterfly_j + (butterfly_i * {ntt_parameters.n}/g_stat_prime_factors[fact_cnt]))]);
"""
                else:
                    c_MR_assn_y = \
f"""
                        y[dst_idx] =  barrett_reduce(y[dst_idx] + y_t[butterfly_j] * g_stat_inv_twiddle_pows[barrett_reduce_pow((n_cur/{ntt_parameters.n})*ni*butterfly_j + (butterfly_i * {ntt_parameters.n}/g_stat_prime_factors[fact_cnt]))]);
"""
            else:
                c_MR_assn_y = \
f"""
                        y[dst_idx] =  barrett_reduce(y[dst_idx] + y_t[butterfly_j] * (inv ? g_stat_inv_twiddle_pows[barrett_reduce_pow((n_cur/{ntt_parameters.n})*ni*butterfly_j + (butterfly_i * {ntt_parameters.n}/g_stat_prime_factors[fact_cnt]))] : g_stat_twiddle_pows[barrett_reduce_pow((n_cur/{ntt_parameters.n})*ni*butterfly_j + (butterfly_i * {ntt_parameters.n}/g_stat_prime_factors[fact_cnt]))]));
"""

        ############################################################
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
    {self.sub_co} Copy x to y then do inplace
    for (int i = 0; i < {ntt_parameters.n}; i++) {self.sub_oc}
        y[i] = x[i];
    {self.sub_cc}
    {c_MR_pow_defs}
    {self.sub_co} for (int n2 = n_cur/g_stat_prime_factors[fact_cnt]; n2 >= 1; n2 /= (g_stat_prime_factors[fact_cnt])) {self.sub_oc}
    {self.sub_co} Iterates over prime factors. Termination at bottom of loop
    {self.sub_while} (1) {self.sub_oc}
        {self.sub_co} For each of the "sub-transforms" in the CT butterfly
        for (int n1 = 0; n1 < orig_size/n_cur; n1++) {self.sub_oc}
            {c_MR_common_pow_j_2_init}
            {c_MR_base_ij_set}
            {self.sub_co} We take steps within our self.sub transform
            for (int ni = 0; ni < n2; ni++) {self.sub_oc}
                {self.sub_co} TODO any way around this dynamic memory allocation?
                int *y_t = calloc(g_stat_prime_factors[fact_cnt], sizeof(int));
                for (int butterfly_i = 0; butterfly_i < g_stat_prime_factors[fact_cnt]; butterfly_i++) {self.sub_oc}
                    dst_idx = n1*n_cur + ni + butterfly_i*n2;
                    y_t[butterfly_i] = y[dst_idx]; {self.sub_co} Temp save
                {self.sub_cc}
                {self.sub_co} We have N^2 terms to add where N is the prime factor
                {self.sub_co} Since N sums into each N node of the self.sub transform
                {c_MR_common_pow_i_2_init}
                for (int butterfly_i = 0; butterfly_i < g_stat_prime_factors[fact_cnt]; butterfly_i++) {self.sub_oc}
                    {c_MR_common_pow_j_3_init}
                    for (int butterfly_j = 0; butterfly_j < g_stat_prime_factors[fact_cnt]; butterfly_j++) {self.sub_oc}
                        dst_idx = n1*n_cur + ni + butterfly_i*n2;
                        {c_MR_assn_y}
                    {self.sub_cc}
                    {c_MR_common_pow_i_2_assn}
                {self.sub_cc}
                free(y_t);
            {self.sub_cc}
            {c_MR_common_pow_j_2_assn}
        {self.sub_cc}
        {self.sub_co} Size for next iter
        n_cur = n2;
        fact_cnt++;
        if (fact_cnt >= {len(ntt_parameters.prime_factorization)}) {self.sub_oc}
            break;
        {self.sub_cc}
        n2 /= (g_stat_prime_factors[fact_cnt]);
    {self.sub_cc}
"""

        if self.search_space_point.type_str == "TYPE_N2":
            ntt_impl_string += c_N2
        else: # TYPE_FAST
            if self.search_space_point.fixed_radix:
                if self.search_space_point.is_recursive:
                    ntt_impl_string += c_fast_fixed_r2_recursive
                else:
                    ntt_impl_string += c_fast_fixed_r2
            else:
                ntt_impl_string += c_fast_mr


        c_ntt_impl_func_end = \
f"""
{self.sub_cc} {self.sub_co} End ntt_impl
"""
        ntt_impl_string += c_ntt_impl_func_end
        return ntt_impl_string

    def __init__(self, search_space_point, ntt_parameters):
        self.search_space_point = search_space_point
        self.ntt_parameters = ntt_parameters
        # For FAST implemenations, check the prime factorizaiton and
        # expand the dimension as needed
        if (self.search_space_point.type_str == "TYPE_FAST"):
            dimension = self.ntt_parameters.n
            print("Original dimension of ", dimension)
            while max(self.ntt_parameters.prime_factorization) > self.search_space_point.max_mixed_radix:
                dimension += 1
                self.ntt_parameters = nt.NTT_Params(dimension)
            print("Dimension expanded to ", dimension)
        # For AVX, expand to multiple of 8
        if (self.search_space_point.type_str == "TYPE_N2" and self.search_space_point.is_avx):
            self.ntt_parameters = nt.NTT_Params(self.avx_reg_width * math.ceil(self.ntt_parameters.n / self.avx_reg_width))
