(define (make-interval a b) (cons a b))

(define (upper-bound m) (max (car m) (cdr m)))
(define (lower-bound m) (min (car m) (cdr m)))

