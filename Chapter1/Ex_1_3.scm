(define (bigger-sum-of-squares x y z)
  (if (> x y)
    ; x big
    (if (> y z)
      (sum-of-squares x y)
      (sum-of-squares x z))
    ; y big
    (if (> x z)
      (sum-of-squares y x)
      (sum-of-squares y z))))
