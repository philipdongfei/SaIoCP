(load "28_expmod.scm")
(load "28_non_zero_random.scm")

(define (Miller-Rabin-test n)
  (let ((times (ceiling (/ n 2))))
    (test-iter n times)))

(define (test-iter n times)
  (cond ((= times 0)
         #t)
        ((= (expmod (non-zero-random n) (- n 1) n)
            1)
         (test-iter n (- times 1)))
        (else
          #f)))

