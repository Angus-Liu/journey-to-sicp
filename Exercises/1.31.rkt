#lang sicp

(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

; 定义阶乘
(define (factorial a)
  (product (lambda (x) x) 1 (lambda (x) (inc x)) a))

(factorial 4)
  

; 计算π的近似值
(define (term n)
  (/ (+ 2 (- n (remainder n 2)))
     (+ 1 (+ n (remainder n 2)))))

(define (next n)
  (inc n))

(product term 1 next 6)

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(* 4 (product-iter term (exact->inexact 1) next 10000000))
