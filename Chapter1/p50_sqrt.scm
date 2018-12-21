(load "p49_newton_transform.scm")

(define (sqrt x)
  (newtons-method (lambda (y) (- (square y) x))
                  1.0))

