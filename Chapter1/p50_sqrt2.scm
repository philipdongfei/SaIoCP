(load "p50_fixed_point_of_transform.scm")
;;;(load "p48_average_damp.scm")
(load "p49_newton_transform.scm")

(define (sqrt x)
  (fixed-point-of-transform (lambda (y) (- (square y) x))
                            newton-transform 
                            1.0))


