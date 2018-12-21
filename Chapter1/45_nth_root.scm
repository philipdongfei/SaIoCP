(load "45_damped_nth_root.scm")
(load "45_lg.scm")

(define (nth-root n)
  (damped-nth-root n (lg n)))
