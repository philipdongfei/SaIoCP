(load "17_double_and_halve.scm")

(define (multi a b)
  (multi-iter a b 0))

(define (multi-iter a b c)
  (cond ((= b 0)
         c)
        ((even? b)
         (multi-iter (double a)
                     (halve b)
                     c))
        ((odd? b)
         (multi-iter a
                     (- b 1)
                     (+ a c)))))

