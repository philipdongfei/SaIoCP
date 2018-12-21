(load "p48_average_damp.scm")
(load "p46_fixed_point.scm")
(load "p49_deriv.scm")

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))
(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))



