#lang sicp

; 求平均值
(define (average x y)
  (/ (+ x y) 2))

; 求平方
(define (square x)
  (* x x))

; 求均方
(define (mean-square x y)
  (average (square x)
           (square y)))

(mean-square 3 4)