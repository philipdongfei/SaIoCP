(load "32_accumulate.scm")

(define (product term a next b)
  (accumulate *
              1
              term
              a 
              next
              b))
