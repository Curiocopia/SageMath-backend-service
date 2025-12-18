#!/usr/bin/env sage

import sys
from sage.all import *

def oppermann_prime_counts_with_legendre(n: int):
    if n < 2:
        print("Only natural numbers greater than 1 can be primes")
        return 0,0

    p_pi = prime_pi(n)

    return legendre_phi(n*(n+1), p_pi) - legendre_phi(n*n, p_pi), legendre_phi(n*n, p_pi) - legendre_phi(n*(n-1), p_pi)

if len(sys.argv) != 2:
    print("Usage: %s <n>" % sys.argv[0])
    print("Returns counts of prime numbers between n*(n-1) and n*n, n*n and n*(n+1).")
    sys.exit(1)

print(oppermann_prime_counts_with_legendre(sage_eval(sys.argv[1])))
