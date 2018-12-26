(define (last-pair lst)
  (define (iter lst result)
          (if (null? lst)
              result
              (iter (cdr lst) (car lst))))
  (if (null? lst)
      (error "list empty -- LAST-PAIR")
      (iter (cdr lst) (car lst))))
      

