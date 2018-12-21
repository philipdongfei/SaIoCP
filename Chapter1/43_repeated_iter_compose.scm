(load "42_compose.scm")

(define (repeated f n)
  (define (iter i repeated-f)
      (if (= i 1)
          repeated-f
          (iter (- i 1)
                (compose f repeated-f))))
  (iter n f))

