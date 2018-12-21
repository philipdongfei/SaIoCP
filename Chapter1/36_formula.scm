(load "36_fixed_point.scm")
(load "p48_average_damp.scm")

(define formula
  (lambda (x)
    (/ (log 1000)
       (log x))))

(define (f x)
  (fixed-point formula x))

(define (f_avg x)
  (fixed-point (average-damp formula) x))

