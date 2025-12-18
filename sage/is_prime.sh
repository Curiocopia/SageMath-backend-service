#!/usr/bin/env sage

import sys
from sage.all import *

if len(sys.argv) != 2:
    print("Usage: %s <n>" % sys.argv[0])
    print("Returns True if n is prime.")
    sys.exit(1)

print(is_prime(sage_eval(sys.argv[1])))
