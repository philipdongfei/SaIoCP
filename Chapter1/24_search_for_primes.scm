(load "22_timed_prime_test.scm")
(load "22_search_for_primes.scm")
(load "p34_fast_prime.scm")

(define (prime? n)
  (fast-prime? n 10))

