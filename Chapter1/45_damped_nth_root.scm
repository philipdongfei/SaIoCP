(load "p46_fixed_point.scm")
(load "45_expt.scm")
(load "45_average_damp_n_times.scm")

(define (damped-nth-root n damp-times)
  (lambda (x)
    (fixed-point
      (average-damp-n-times
        (lambda (y)
          (/ x (expt y (- n 1))))
        damp-times)
      1.0)))

