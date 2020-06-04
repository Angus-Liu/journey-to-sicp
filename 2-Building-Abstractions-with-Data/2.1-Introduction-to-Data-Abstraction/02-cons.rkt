#lang sicp

; 模拟 cons 序对相关操作

(define (cons x y)
  (define (dispatch m)
    (cond ((= m 0) x)
          ((= m 1) y)
          (else (error "illegal argument"))))
  dispatch)

(define (car c)
  (c 0))
(define (cdr c)
  (c 1))

(define c (cons 3 4))
(car c)
(cdr c)
