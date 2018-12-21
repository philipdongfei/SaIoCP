(load "p48_average_damp.scm")
(load "p46_fixed_point.scm")

(define (sqrt x)
  (fixed-point (average-damp (lambda (y) (/ x y)))
               1.0))

