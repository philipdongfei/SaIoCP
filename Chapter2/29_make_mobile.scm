(define (make-mobile left right)
  (list left right))
(define (left-branch tree)
  (car tree))
(define (right-branch tree)
  (cadr tree))

(define (make-branch length structure)
  (list length structure))

(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (cadr branch))

(define (total-weight tree)
    (+ (branch-weight (left-branch tree))
        (branch-weight (right-branch tree))))

(define (branch-weight branch)
  (if (hangs-another-mobile? branch)
      (total-weight (branch-structure branch))
      (branch-structure branch)))

(define (hangs-another-mobile? branch)
  (pair? (branch-structure branch)))

(define (branch-torque branch)
  (* (branch-length branch)
     (branch-weight branch)))

(define (mobile-balance? mobile)
  (let ((left (left-branch mobile))
        (right (right-branch mobile)))
    (and
      (same-torque? left right)
      (branch-balance? left)
      (branch-balance? right))))

(define (same-torque? left right)
  (= (branch-torque left)
     (branch-torque right)))

(define (branch-balance? branch)
  (if (hangs-another-mobile? branch)
      (mobile-balance? (branch-structure branch))
      #t))




