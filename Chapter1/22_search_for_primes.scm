(load "22_timed_prime_test.scm")
(load "22_next_odd.scm")

(define (continue-primes n count)
  (cond ((= count 0)
         (display "are primes."))
        ((prime? n)
         (display n)
         (newline)
         (continue-primes (next-odd n) (- count 1)))
        (else
          (continue-primes (next-odd n) count))))

(define (search-for-primes n)
  (let ((start-time (real-time-clock)))
      (continue-primes n 12)
      (- (real-time-clock) start-time)))


