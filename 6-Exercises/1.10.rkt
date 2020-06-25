#lang sicp

; Ackermann 函数定义
; A(x,y) = 2y; x = 0 or y = 0 or y = 1
; A(x,y) = A(x-1, A(x, y-1))

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
; 1024
(A 1 10)
(A 0 (A 1 9))
(* 2 (A 1 9))

; 65536
(A 2 4)
(A 3 3)

; 4
(A 4 2)
(A 3 (A 4 1))
(A 3 2)
(A 2 (A 3 1))
(A 2 2)
(A 1 (A 2 1))
(A 1 2)
(A 0 (A 1 1))
(* 2 2)

; 2n
(define (f n) (A 0 n))
(f 0)
(f 1)
(f 2)
(f 3)

; 2^n
(define (g n) (A 1 n))
; (A 1 n)
; (A 0 A(1 (- 1 n))
; (* 2 A(1 n-1))
(g 0)
(g 1)
(g 2)
(g 3)

; h(n-1)^2
(define (h n) (A 2 n))
; (A 1 (A 2 (- n 1)))
; 由 (g n) 得 (A 2 (- n 1))^2
; h(n-1)^2

(h 0)
(h 1)
(h 2)
(h 3)