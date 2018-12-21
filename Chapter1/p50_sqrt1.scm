(load "p50_fixed_point_of_transform.scm")
(load "p48_average_damp.scm")

(define (sqrt x)
  (fixed-point-of-transform (lambda (y) (/ x y))
                            average-damp
                            1.0))


