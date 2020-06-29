#lang sicp

; 判断是否是变量
(define (variable? x) (symbol? x))

; 判断是否是同一个变量
(define (same-variable? x y)
  (and (variable? x) (variable? y) (eq? x y)))

; 判断是否是和式
(define (sum? x)
  (and (pair? x) (eq? (car x) '+)))

; 求被加数
(define (addend s)
  (cadr s))

; 求加数
(define (augend s)
  (caddr s))

; 构造和式
(define (make-sum a1 a2)
  (list '+ a1 a2))

; 判断是否是乘式
(define (product? x)
  (and (pair? x) (eq? (car x) '*)))

; 求被乘数
(define (multiplier p)
  (cadr p))

; 求乘数
(define (multiplicand p)
  (caddr p))

; 构造乘式
(define (make-product m1 m2)
  (list '* m1 m2))

; 判断是否是给定数

; 求导
(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp)
         (if (same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
          (make-product (multiplier exp)
                        (deriv (multiplicand exp) var))
          (make-product (multiplicand exp)
                        (deriv (multiplier exp) var))))
        (else
         (error "unknown expression type -- DERIV" exp))))


(deriv '(* (* 2 x) y) 'x)