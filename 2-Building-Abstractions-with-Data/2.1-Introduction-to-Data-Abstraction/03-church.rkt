#lang sicp

; Church 计数

; 表示 0
(define zero (lambda (f) (lambda (x) x)))

; +1
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))