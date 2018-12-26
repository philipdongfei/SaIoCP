(define (scale-list items factor)
  (if (null? items)
      '() 
      (cons (* (car items) factor)
            (scale-list (cdr items) factor))))

