(load "p48_average_damp.scm")
(load "p46_fixed_point.scm")

(define (cube-root x)
  (fixed-point (average-damp (lambda (y) (/ x (square y))))
               1.0))

