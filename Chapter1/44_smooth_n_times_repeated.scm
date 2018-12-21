(load "44_smooth.scm")
(load "43_repeated.scm")

(define (smooth-n-times f n)
  (let ((n-times-smooth (repeated smooth n)))
      (n-times-smooth f)))

