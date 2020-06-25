#lang sicp

(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))

(car (cons 1 2))
(cdr (cons 1 2))

; (car (cons 1 2))
; 展开 cons
; (car (lambda (m) (m 1 2)))
; 展开 car
; ((lambda (m) (m 1 2)) (lambda (p q) p))
; 代换 m
; ((lambda (p q) p) 1 2)
; 代换 p、q
; 1