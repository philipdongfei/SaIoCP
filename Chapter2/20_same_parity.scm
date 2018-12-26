(define (same-parity f . lst)
  (define (iter filterfun lst result)
     (if (null? lst)
        (reverse result) 
        (if (filterfun (car lst))
            (iter filterfun  (cdr lst) (cons (car lst) result))
            (iter filterfun (cdr lst) result))))
  (iter (if (even? f)
            even?
            odd?)
        lst 
        (cons f '())))

