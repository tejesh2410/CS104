import math
def isprime(n: int):
    mid = math.sqrt(n)
    k=2
    while (k <= mid):
        if n%k==0:
            return False
        k+=1
    return True

primes = [2]
kseries = [2]
with open("q1-test_input.txt", 'r') as f:
    q = int(f.readline())

    for i in range(q):
        n=int(f.readline())
        while n > len(kseries):
            j = primes[-1] + 1
            while not isprime(j):
                j+=1
            primes.append(j)
            kseries.append(j)
            if primes[-1] - primes[-2] == 2:
                kseries.append(j)
        print(kseries[n-1])
