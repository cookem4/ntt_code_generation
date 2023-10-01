import math

class NTT_Params:
    prime_factorization = []

    # Setters
    def set_prime_factorization(self):
        fact = 2;
        n = self.n
        while (n > 1):
            if (n % fact == 0):
                self.prime_factorization.append(fact)
                n //= fact
                fact = 2
            else:
                fact += 1
        self.prime_factorization = sorted(self.prime_factorization)

    def __init__(self, dimension):
        self.n = dimension
        self.g, self.mod = get_ntt_params(self.n)
        self.g_inv = modinv(self.g, self.mod)
        self.set_prime_factorization()
        self.barrett_k = 2*math.ceil(math.log2(self.mod));
        self.barrett_r = ((1 << self.barrett_k) // self.mod);
        # For power reduction in the case of LUT
        self.barrett_k_pow = 2*math.ceil(math.log2(self.n));
        self.barrett_r_pow = ((1 << self.barrett_k_pow) // self.n);

def is_prime(n):
    if (n & 1 == 0):
        return 0
    else:
        d = 3
        while (d*d <= n):
            if (n % d == 0):
                return 0
            d = d + 2
        return 0 if n == 1 else 1

def get_ntt_params(n):
    k = 2
    while True:
        mod = n*k + 1
        if (is_prime(mod)):
            break
        else:
            k += 1
    for i in range(2, mod):
        good_pow = True
        running_pow = i
        for j in range(2, n+1):
            running_pow = (running_pow * i) % mod
            if (running_pow == 1 and j != n):
                good_pow = False
                break
        if (running_pow == 1 and good_pow):
            return (i, mod)

    # Raise exception if no generator
    assert True, "No generator for the given dimension"

def modinv(a, m):
    t = 0
    newt = 1
    r = m
    newr = a
    while (newr != 0):
        q = r // newr
        tempt = newt
        tempr = newr
        newt = t = q*newt
        newr = r - q*newr
        t = tempt
        r = tempr
    if (t < 0):
        t += m
    return t

