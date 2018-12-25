(load "p64_make_center_width.scm")

(define (make-center-percent c p)
  (make-center-width c (* c p)))

(define (percent i)
  (/ (width i) (center i)))
