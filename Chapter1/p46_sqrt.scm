(load "p46_fixed_point.scm")
(load "sqrt.scm")

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
               1.0))

