
(define (last-pair lst)
  (cond ((null? lst)
         (error "list empty -- LAST-PAIR"))
        ((null? (cdr lst))
         (car lst))
         (else
           (last-pair (cdr lst)))))


