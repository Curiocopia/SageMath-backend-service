#!/usr/bin/env sage

import sys
from sage.all import *

def oppermann_prime_counts(n: int):
    if n < 2:
        print("Only natural numbers greater than 1 can be primes")
        return 0,0

    lower_range_primes = []
    upper_range_primes = []

    for i in range(n*(n-1)+1, n*n, 2):
        if is_prime(i):
            lower_range_primes.append(i)

    if (n*n)%2 == 0:
        a = 1
    else:
        a = 0

    for i in range(n*n+a, n*(n+1), 2):
        if is_prime(i):
            upper_range_primes.append(i)

    return len(lower_range_primes), len(upper_range_primes)

if len(sys.argv) != 2:
    print("Usage: %s <n>" % sys.argv[0])
    print("Returns counts of prime numbers between n*(n-1) and n*n, n*n and n*(n+1).")
    sys.exit(1)

print(oppermann_prime_counts(sage_eval(sys.argv[1])))
