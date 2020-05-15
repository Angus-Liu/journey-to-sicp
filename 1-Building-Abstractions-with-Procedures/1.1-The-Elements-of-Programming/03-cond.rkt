#lang sicp

; 求绝对值
(define (abs x)
  ; cond 分支
  (cond ((> x  0) x)
        ((= x  0) 0)
        ((< x  0) (- x))))

(abs 1)
(abs 0)
(abs -1)

(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))

(abs2 1)
(abs2 0)
(abs2 -1)

(define (abs3 x)
  ; if 条件语句
  (if (< x 0)
      (- x)
      x))

(abs3 1)
(abs3 0)
(abs3 -1)



