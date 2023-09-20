#include "ntt.h" 

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
    if (size <= ctx->recursive_base_size) {
        int *y = calloc(size, sizeof(int));
        // Treat as n^2 iterative problem
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                // y[i] = (y[i] + (x[j] * a_pow_b_mod_m(ctx->w, i*j*(n0/size) % n0, ctx->mod)) % ctx->mod) % ctx->mod;
                y[i] = barrett_reduce(y[i] + barrett_reduce(x[j] * a_pow_b_mod_m(ctx->w, i*j*(n0/size) % n0, ctx->mod), ctx), ctx);
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
        for (int i = 0; i < n1; i++) {
            y_sub[i] = ntt_recursive(n2, recursive_cnt++, x_sub[i], ctx);
        }
        // Butterfly back into original array
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < n1; j++) {
                // TODO below is mod operation vs barrett reduction
                // y[i] = (y[i] + (y_sub[j][i % n2] * a_pow_b_mod_m(ctx->w, i*j*(n0/size) % n0, ctx->mod)) % ctx->mod) % ctx->mod;
                y[i] = barrett_reduce(y[i] + barrett_reduce(y_sub[j][i % n2] * a_pow_b_mod_m(ctx->w, i*j*(n0/size) % n0, ctx->mod), ctx), ctx);
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
void ntt(ntt_ctx * ctx) {
  int len, start, k, j, t, zeta;
  int *r = malloc(ctx->size * sizeof(int));
  for (int i = 0; i < ctx->size; i++) {
      r[i] = ctx->in_seq[i];
  }
  k = 1;
  for(len = ctx->size>>1; len >= 2; len >>= 1) {
    for(start = 0; start < ctx->size; start = j + len) {
      zeta = ctx->zetas[k++];
      zeta = a_pow_b_mod_m(ctx->w, len, ctx->mod);
      for(j = start; j < start + len; j++) {
        t = fqmul(zeta, r[j + len], ctx);
        r[j + len] = r[j] - t;
        r[j] = r[j] + t;
      }
    }
  }
  ctx->out_seq = r;

  // Reduce
  for(j = 0; j < 256; j++)
    r[j] = barrett_reduce(r[j], ctx);
}

void intt(ntt_ctx * ctx) {
  int start, len, j, t, k, zeta;
  const int f = 1441; // mont^2/128
  int *r = malloc(ctx->size * sizeof(int));
  for (int i = 0; i < ctx->size; i++) {
      r[i] = ctx->in_seq[i];
  }
  k = (ctx->size>>1) - 1;
  for(len = 2; len <= ctx->size>>1; len <<= 1) {
    for(start = 0; start < ctx->size; start = j + len) {
      zeta = ctx->zetas[k--];
      for(j = start; j < start + len; j++) {
        t = r[j];
        r[j] = barrett_reduce(t + r[j + len], ctx);
        r[j + len] = r[j + len] - t;
        r[j + len] = fqmul(zeta, r[j + len], ctx);
      }
    }
  }

  for(j = 0; j < 256; j++)
    r[j] = fqmul(r[j], f, ctx);

  for(j = 0; j < 256; j++)
    r[j] = barrett_reduce(r[j], ctx);

  ctx->out_seq = r;
}
*/

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
