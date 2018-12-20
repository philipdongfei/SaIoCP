
(define (filtered-accumulate combiner null-value valid? term a next b)
  (cond ((> a b) null-value)
        ((valid? (term a)) 
         (combiner (term a)
                   (filtered-accumulate combiner
                               null-value
                               valid?
                               term
                               (next a)
                               next
                               b)))
        (else 
          (combiner null-value
                    (filtered-accumulate combiner
                      null-value
                      valid?
                      term
                      (next a)
                      next
                      b)))))
