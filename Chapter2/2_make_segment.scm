
(define (make-point x y) (cons x y))

(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-segment start end) (cons start end))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (midpoint-segment Line) 
  (make-point (/ (+ (car (car Line)) (car (cdr Line))) 2.0)
              (/ (+ (cdr (car Line)) (cdr (cdr Line))) 2.0)))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

