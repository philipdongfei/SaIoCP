;;; 28 Miller-Rabin expmod
(load "28_nontrivial_square_root.scm")

(define (expmod base exp m)
  (cond ((= exp 0)
         1)
        ((nontrivial-square-root? base m)
         0)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
          (remainder (* base (expmod base (- exp 1) m))
                     m))))

