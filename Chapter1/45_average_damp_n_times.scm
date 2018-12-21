(load "43_repeated.scm")
(load "p48_average_damp.scm")

(define (average-damp-n-times f n)
  ((repeated average-damp n) f))

