#include "ntt.h" 

// Comparison function for qsort
int compare(const void *a, const void *b) {
    // Cast the void pointers to the correct data type (int*)
    int int_a = *((int*)a);
    int int_b = *((int*)b);

    // Compare the integers
    return int_b - int_a;
}

// Function to sort an array using qsort
void sort(int *x, size_t size) {
    qsort(x, size, sizeof(int), compare);
}

int clog2(long int in) {
    int count = 0;
    in--; // For powers of 2
    while (in > 0) {
        in >>= 1;
        count++;
    }
    return count;
}

int a_pow_b_mod_m(int a, int b, int m) {
    int abm = 1;
    for (int i = 0; i < b; i++) {
        abm = (abm * a) % m;
    }
    return abm;
}

int is_prime(int n) {
    if ((n & 1) == 0) {
        return 0;
    }
    int d = 3;
    while (d * d <= n) {
        if (n % d == 0)
            return 0;
        d = d + 2;
    }
    return n == 1 ? 0 : 1;
}

int * get_prime_factors(int n, int *prime_factor_size) {
    // Max number of prime factors is 2^^clog2(n)
    int ret_idx = 0;
    int *ret = calloc(clog2(n), sizeof(int));
    int fact = 2;
    while (n > 1) {
        if (n % fact == 0) {
            ret[ret_idx] = fact;
            n /= fact;
            fact = 2; // Reset factor
            ret_idx++;
        } else {
            fact++;
        }
    }
    *prime_factor_size = ret_idx;
    // Sort the prime largest to smallest
    sort(ret, (size_t) ret_idx);
    return ret;
}

void get_ntt_params(int n, int * mod, int * g) {
    int k = 2;
    while (1) {
        *mod = n*k + 1;
        if (is_prime(*mod)) {
            break;
        } else {
            k++;
        }
    }
    int good_pow;
    int running_pow;
    for (int i = 2; i < *mod; i++) {
        good_pow = 1;
        running_pow = i;
        for (int j = 2; j <= n; j++) {
            running_pow = (running_pow * i) % *mod;
            if (running_pow == 1 && j != n) {
                good_pow = 0;
                break;
            }
        }
        if (running_pow == 1 && good_pow) {
            *g = i;
            break;
        }
    }
}

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

int montgomery_reduce(int a, ntt_ctx *ctx)
{
  int t;

  t = a*ctx->qinv;
  t = (a - t*ctx->mod) >> 16;
  return t;
}

int barrett_reduce(int a, ntt_ctx *ctx) {
  long int q, t;
  q = ((long int) a*ctx->barrett_r) >> ctx->barrett_k;
  t = (long int) a - (q * ctx->mod);
  t = t >= (long int) ctx->mod ? t - (long int) ctx->mod : t;
  return (int) t;
}

int fqmul(int a, int b, ntt_ctx *ctx) {
  return montgomery_reduce(a*b, ctx);
}

// As matrtix by vector multiplication with NTT matrix. Worst Case since we
// store the matrix
void ntt_mtx(ntt_ctx * ctx) {
  int *nttmtx  = malloc(ctx->size * ctx->size * sizeof(int));
  int *r  = malloc(ctx->size * sizeof(int));
  int *s  = malloc(ctx->size * sizeof(int));
  for (int i = 0; i < ctx->size; i++) {
      r[i] = ctx->in_seq[i];
      s[i] = 0;
  }
  for (int i = 0; i < ctx->size; i++) {
      for (int j = 0; j < ctx->size; j++) {
          nttmtx[i*ctx->size + j] = a_pow_b_mod_m(ctx->w, (i*j)%ctx->size, ctx->mod);
      }
  }
  for (int i = 0; i < ctx->size; i++) {
      for (int j = 0; j < ctx->size; j++) {
          s[i] = (s[i] + r[j] * nttmtx[i*ctx->size + j]) % ctx->mod;
      }
  }
  ctx->out_seq = s;
  for (int i = 0; i < ctx->size; i++) {
      s[i] = s[i] < 0 ? s[i] + ctx->mod : s[i];
  }
}

// Super simple but inefficient
void ntt_n_squared(ntt_ctx * ctx) {
  int *r  = malloc(ctx->size * sizeof(int));
  int *s  = malloc(ctx->size * sizeof(int));
  for (int i = 0; i < ctx->size; i++) {
      r[i] = ctx->in_seq[i];
      s[i] = 0;
  }
  for (int i = 0; i < ctx->size; i++) {
      for (int j = 0; j < ctx->size; j++) {
          int this_twiddle = a_pow_b_mod_m(ctx->w, (i*j) % ctx->size, ctx->mod);
          s[i] = (s[i] + r[j] * this_twiddle) % ctx->mod;
      }
  }
  ctx->out_seq = s;
  for (int i = 0; i < ctx->size; i++) {
      s[i] = s[i] < 0 ? s[i] + ctx->mod : s[i];
  }
}

// Re-use power computations
void ntt_n_squared_2(ntt_ctx * ctx) {
  int *r  = malloc(ctx->size * sizeof(int));
  int *s  = malloc(ctx->size * sizeof(int));
  int twiddle = 1;
  int twiddle_fact = 1; // Geometrically increasing factor in each loop iteration
  for (int i = 0; i < ctx->size; i++) {
      r[i] = ctx->in_seq[i];
      s[i] = 0;
  }
  for (int i = 0; i < ctx->size; i++) {
      twiddle = 1;
      for (int j = 0; j < ctx->size; j++) {
          twiddle = j == 0 ? 1 : ((twiddle * twiddle_fact) % ctx->mod);
          s[i] = (s[i] + r[j] * twiddle) % ctx->mod;
      }
      // Increase twiddle factor
      twiddle_fact = (twiddle_fact * ctx->w) % ctx->mod;
  }
  ctx->out_seq = s;
  for (int i = 0; i < ctx->size; i++) {
      s[i] = s[i] < 0 ? s[i] + ctx->mod : s[i];
  }
}

// Use barrett reduction instead of mod
void ntt_n_squared_3(ntt_ctx * ctx) {
  int *r  = malloc(ctx->size * sizeof(int));
  int *s  = malloc(ctx->size * sizeof(int));
  int twiddle = 1;
  int twiddle_fact = 1; // Geometrically increasing factor in each loop iteration
  for (int i = 0; i < ctx->size; i++) {
      r[i] = ctx->in_seq[i];
      s[i] = 0;
  }
  for (int i = 0; i < ctx->size; i++) {
      twiddle = 1;
      for (int j = 0; j < ctx->size; j++) {
          twiddle = j == 0 ? 1 : barrett_reduce(twiddle * twiddle_fact, ctx);
          s[i] = barrett_reduce(s[i] + r[j] * twiddle, ctx);
      }
      // Increase twiddle factor
      twiddle_fact = barrett_reduce(twiddle_fact * ctx->w, ctx);
  }
  ctx->out_seq = s;
  for (int i = 0; i < ctx->size; i++) {
      s[i] = s[i] < 0 ? s[i] + ctx->mod : s[i];
  }
}

// Simplest recursive implementation, not in place
int * ntt_recursive(int size, int recursive_cnt, int *x, ntt_ctx * ctx) {
    int n0 = ctx->size;
    if (size <= ctx->recursive_base_size || recursive_cnt == (ctx->prime_factor_size-1)) {
        int *y = calloc(size, sizeof(int));
        // Treat as n^2 iterative problem
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                y[i] = (y[i] + (x[j] * a_pow_b_mod_m(ctx->w, i*j*((int) n0/size) % n0, ctx->mod)) % ctx->mod) % ctx->mod;
                // y[i] = barrett_reduce(y[i] + barrett_reduce(x[j] * a_pow_b_mod_m(ctx->w, i*j*(n0/size) % n0, ctx->mod), ctx), ctx);
            }
        }
        return y;
    } else {
        int n1 = (ctx->type == FAST_FIXED) ? ctx->recursive_dec_size : ctx->prime_factors[recursive_cnt];
        int n2 = size/n1; // Guaranteed an integer
        // Break up data into N1 sub-transforms of size N2
        int ** x_sub = calloc(n1, sizeof(int*));
        // Output pointers
        int * y = calloc(size, sizeof(int));
        int ** y_sub = malloc(n1 * sizeof(int*)); // Don't need to malloc inner since it's done by the recursive call
        for (int i = 0; i < n1; i++) {
            x_sub[i] = calloc(n2, sizeof(int));
            int * temp_arr = x_sub[i];
            for (int j = 0; j < n2; j++) {
                temp_arr[j] = x[i + n1*j];
            }
        }
        // Recursive calls
        recursive_cnt++;
        for (int i = 0; i < n1; i++) {
            y_sub[i] = ntt_recursive(n2, recursive_cnt, x_sub[i], ctx);
        }
        // Butterfly back into original array
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < n1; j++) {
                // TODO below is mod operation vs barrett reduction
                // y[i] = (y[i] + (y_sub[j][i % n2] * a_pow_b_mod_m(ctx->w, i*j*((int) n0/size) % n0, ctx->mod)) % ctx->mod) % ctx->mod;
                y[i] = barrett_reduce(y[i] + barrett_reduce(y_sub[j][i % n2] * a_pow_b_mod_m(ctx->w, i*j*((int) n0/size) % n0, ctx->mod), ctx), ctx);
            }
        }
        // Free allocated temp x data
        for (int i = 0; i < n1; i++) {
            free(x_sub[i]);
            free(y_sub[i]);
        }
        return y;
    }
}

/*
void ntt_inplace_ct(ntt_ctx * ctx) {
    int16_t t, twiddle;
    k = 1
    int *x = ctx->in_seq;
    for(len = ctx->size>>1; len >= 2; len >>= 1) {
        for(start = 0; start < ctx->size; start = j + len) {
            twiddle = a_pow_b_mod_m(ctx->w, (start + 
            for(j = start; j < start + len; j++) {
                t = barrett_reduce(twiddle * x[j + len]);
                x[j + len] = x[j] - t;
                x[j] = x[j] + t;
            }
        }
    }
}
*/

// TODO multi-radix in-place
void ntt_inplace(ntt_ctx * ctx) {
    int *x = ctx->in_seq;
    int t1, t2;
    int twiddle1, twiddle2;
    int cur_size;
    int cur_idx;
    int half_rot = a_pow_b_mod_m(ctx->w, ctx->size/2, ctx->mod);
    for (int stride = ctx->size>>1; stride >= 1; stride >>= 1) { // log n
        cur_size = stride<<1;
        // For each of the "sub-transforms" in the CT butterfly
        for (int sub_trans_idx = 0; sub_trans_idx < ctx->size/cur_size; sub_trans_idx++) {
            // We take steps within our sub transform
            for (int step = 0; step < stride; step++) {
                cur_idx = sub_trans_idx*cur_size + step;
                twiddle1 = a_pow_b_mod_m(ctx->w, sub_trans_idx*(stride) % ctx->size, ctx->mod);
                // Twiddle 2 is offset half a rotation from twiddle 1
                twiddle2 = barrett_reduce(twiddle1 * half_rot, ctx);
                t1 = barrett_reduce(x[cur_idx + stride] * twiddle1, ctx);
                t2 = barrett_reduce(x[cur_idx + stride] * twiddle2, ctx);
                // printf("Sub trans: %d Cur size: %d Idx 1: %d Twiddle 1: %d Idx 2: %d Twiddle 2: %d \n", sub_trans_idx, cur_size, cur_idx, sub_trans_idx*stride % ctx->size, cur_idx + stride, (ctx->size/2 + sub_trans_idx*stride) % ctx->size);
                // base 2
                x[cur_idx + stride] = x[cur_idx] + t2;
                x[cur_idx] = x[cur_idx] + t1;
                // Reduce
                x[cur_idx + stride] = x[cur_idx + stride] > ctx->mod ? x[cur_idx + stride] - ctx->mod : x[cur_idx + stride];
                x[cur_idx] = x[cur_idx] > ctx->mod ? x[cur_idx] - ctx->mod : x[cur_idx];
            }
        }
    }
    /*
    for (int i = 0; i < ctx->size; i++) {
        printf("NTT(%d) = %d\n", i, x[i]);
    }
    */
    ctx->out_seq = x;
}

/*
void ntt_inplace(ntt_ctx * ctx) {
    int ni, n0, n1, n2, start, k, j, t1, t2, zeta, sub_twiddle, twiddle1, twiddle2;
    int *x = malloc(ctx->size * sizeof(int));
    for (int i = 0; i < ctx->size; i++) {
        x[i] = ctx->in_seq[i];
    }
    k = 1;
    n0 = ctx->size;
    n1 = 2;
    n2 = n0/n1;
    // Break up data into N1 sub-transforms of size N2
    for(ni = n0; ni >= n1; ni /= n1) { // Current transform length
        for(j = 0; j < n0; j += n1) { // Position of this transform within the in-place array
            sub_twiddle = a_pow_b_mod_m(ctx->w, ni/n0, ctx->mod);
            twiddle1 = a_pow_b_mod_m(sub_twiddle, j/n1     , ctx->mod);
            twiddle2 = a_pow_b_mod_m(sub_twiddle, j/n1 + ni/2, ctx->mod);
            t1 = barrett_reduce(twiddle1 * x[j + ni], ctx);
            t2 = barrett_reduce(twiddle2 * x[j + ni], ctx);
            x[j + ni] = x[j] + t1 > ctx->mod ? x[j] + t1 - ctx->mod : x[j] + t1;
            x[j] = x[j] + t2 > ctx->mod ? x[j] + t2 - ctx->mod : x[j] + t2;
            printf("ni: %d j: %d pow1: %d j + ni %d pow2: %d\n", ni, j, j/n1, j/n1 + ni/2, j + ni);
        }
    }
    ctx->out_seq = x;

    // Reduce
    for(j = 0; j < ctx->size; j++)
        x[j] = barrett_reduce(x[j], ctx);
}
*/

void intt_inplace(ntt_ctx * ctx) {
  int start, len, j, t, k, twiddle;
  int *x = malloc(ctx->size * sizeof(int));
  for (int i = 0; i < ctx->size; i++) {
      x[i] = ctx->in_seq[i];
  }
  k = (ctx->size>>1) - 1;
  for(len = 2; len <= ctx->size>>1; len <<= 1) {
    for(start = 0; start < ctx->size; start = j + len) {
      twiddle = a_pow_b_mod_m(ctx->w, len, ctx->mod);
      for(j = start; j < start + len; j++) {
        t = x[j];
        x[j] = barrett_reduce(t + x[j + len], ctx);
        x[j + len] = x[j + len] - t;
        x[j + len] = barrett_reduce(twiddle * x[j + len], ctx);
      }
    }
  }

  for(j = 0; j < 256; j++)
    x[j] = barrett_reduce(x[j], ctx);

  ctx->out_seq = x;
}

int ntt_check(ntt_ctx *fwd_ctx, ntt_ctx *inv_ctx) {
    switch (fwd_ctx->type) {
        case MTX:
            ntt_mtx(fwd_ctx);
            inv_ctx->in_seq = fwd_ctx->out_seq;
            ntt_mtx(inv_ctx);
            break;

        case N2_1:
            ntt_n_squared(fwd_ctx);
            inv_ctx->in_seq = fwd_ctx->out_seq;
            ntt_n_squared(inv_ctx);
            break;

        case N2_2:
            ntt_n_squared_2(fwd_ctx);
            inv_ctx->in_seq = fwd_ctx->out_seq;
            ntt_n_squared_2(inv_ctx);
            break;

        case N2_3:
            ntt_n_squared_3(fwd_ctx);
            inv_ctx->in_seq = fwd_ctx->out_seq;
            ntt_n_squared_3(inv_ctx);
            break;

        case FAST_FIXED:
        case FAST_MIXED:
            fwd_ctx->out_seq = ntt_recursive(fwd_ctx->size, 0, fwd_ctx->in_seq, fwd_ctx);
            inv_ctx->in_seq = fwd_ctx->out_seq;
            inv_ctx->out_seq = ntt_recursive(inv_ctx->size, 0, inv_ctx->in_seq, inv_ctx);
            break;

        case FAST_FIXED_INPLACE:
            ntt_inplace(fwd_ctx);
            inv_ctx->in_seq = fwd_ctx->out_seq;
            ntt_inplace(inv_ctx);
            break;
    }
        
    int *orig_arr = fwd_ctx->in_seq;
    int *final_arr = inv_ctx->out_seq;
    int inv_n = modinv(fwd_ctx->size, fwd_ctx->mod);
    for (int i = 0; i < fwd_ctx->size; i++) {
        final_arr[i] = (final_arr[i] * inv_n) % fwd_ctx->mod;
        if (final_arr[i] != orig_arr[i]) {
            return 0;
        }
    }
    return 1;
}
