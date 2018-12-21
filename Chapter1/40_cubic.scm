(load "p37_cube.scm")
(load "p49_newton_transform.scm")

(define (cubic a b c)
  (lambda (x)
    (+ (cube x)
       (* a (square x))
       (* b x)
       c)))

(define (40-fun a b c)
  (newtons-method (cubic a b c) 1))
