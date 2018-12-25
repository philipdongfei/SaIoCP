(load "2_make_segment.scm")

(define (make-rect lt rb)
  (cons lt rb))

(define (lefttop-point rect) (car rect))
(define (rightbottom-point rect) (cdr rect))

(define (get-perimeter rect)
  (+ (* 2 (abs (- (car (lefttop-point rect))
                  (car (rightbottom-point rect)))))
     (* 2 (abs (- (cdr (lefttop-point rect))
                  (cdr (rightbottom-point rect)))))))

(define (get-area rect)
  (* (abs (- (car (lefttop-point rect))
             (car (rightbottom-point rect))))
     (abs (- (cdr (lefttop-point rect))
             (cdr (rightbottom-point rect))))))




