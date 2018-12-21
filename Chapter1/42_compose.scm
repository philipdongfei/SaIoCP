(load "p46_fixed_point.scm")

(define (compose f g)
    (lambda (x) (f (g x))))
