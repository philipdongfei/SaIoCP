(define (same-parity f . lst)
  (define (iter filterfun lst result)
     (if (null? lst)
        result 
        (if (filterfun (car lst))
            (cons (car lst) (iter filterfun  (cdr lst) result))
            (iter filterfun (cdr lst) result))))
  (cons f (iter (if (even? f)
            even?
            odd?)
        lst 
        '())))

