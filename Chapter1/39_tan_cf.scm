(load "37_cont_frac_iter.scm")

(define (tan-cf x k)
  (define (N i)
    (if (= i 1)
        x
        (- (square x))))
  (define (D i)
    (- (* i 2) 1))
  (exact->inexact (cont-frac N D k)))

