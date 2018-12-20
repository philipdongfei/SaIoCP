(load "33_coprime.scm")
(load "33_filtered_accumulate.scm")

(define (product-of-coprimes n)
  (filtered-accumulate *
                       1
                       (lambda (x) (coprime? x n))
                       (lambda (x) x)
                       1
                       (lambda (i) (+ i 1))
                       n))
