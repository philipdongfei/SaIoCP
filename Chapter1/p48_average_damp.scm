;;;average damp

(load "p15_average.scm")

(define (average-damp f)
  (lambda (x)
    (average x
             (f x))))

