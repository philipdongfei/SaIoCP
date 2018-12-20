(load "31_product_iter.scm")

(define (factorial n)
  (product (lambda (x) x)
           1
           (lambda (i) (+ i 1))
           n))

