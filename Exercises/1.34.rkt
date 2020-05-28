#lang sicp

(define (square n)
  (* n n))

(define (f g)
  (g 2))

(f square)

(f (lambda (z) (* z (+ z 1))))

; 报错，给出的过程f无法接受一个数字参数
(f f)
