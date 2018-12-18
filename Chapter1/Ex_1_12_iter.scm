;;;https://en.wikipedia.org/wiki/Pascal's_triangle
;;;https://en.wikipedia.org/wiki/Binomial_coefficient
(load "p22_factorial.scm")

(define (pascal row col)
  (/ (factorial row)
     (* (factorial col)
        (factorial(- row col)))))

