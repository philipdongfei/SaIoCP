(load "p38_sum.scm")
(load "p37_cube.scm")


(define (integral f a b dx)
  (* (sum f
          (+ a (/ dx 2.0))
          (lambda (x) (+ x dx))
          b)
     dx))
