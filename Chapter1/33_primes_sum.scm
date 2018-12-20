(load "p33_smallest_divisor.scm")
(load "33_filtered_accumulate.scm")

(define (primes-sum a b)
  (filtered-accumulate +
                       0
                       prime?
                       (lambda (x) x)
                       a
                       (lambda (i) (+ i 1))
                       b))

