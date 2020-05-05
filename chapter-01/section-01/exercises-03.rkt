#lang sicp

(define (sum-of-two-bigest-num x y z)
(+ x y z 
  (- (cond ((and (< x y) (< x z)) x)
           ((and (< y z) (< y z)) y)
           (else z)))))

(sum-of-two-bigest-num 3 2 3)



(define (sum-of-two-bigest-num2 x y z)
 (cond ((and (> x z) (> y z)) (+ x y))
       ((and (> x y) (> z y)) (+ x z))
       (else (+ y z))))

(sum-of-two-bigest-num2 3 2 3)