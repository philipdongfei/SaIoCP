(load "p37_cube.scm")
(load "p38_sum.scm")
(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum cube a inc b))

