;;; multi
(load "17_double_and_halve.scm")

(define (multi a b)
  (cond ((= b 0)
         0)
         ((even? b)
          (double (multi a (halve b))))
         ((odd? b)
          (+ a (multi a (- b 1))))))
