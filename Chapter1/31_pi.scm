(load "31_product_iter.scm")
(load "31_numer_term.scm")
(load "31_denom_term.scm")

(define (pi n)
  (* 4
     (exact->inexact
       (/ (product numer-term
                   1
                   (lambda (i) (+ i 1))
                   n)
          (product denom-term
                   1
                   (lambda (i) (+ i 1))
                   n)))))

