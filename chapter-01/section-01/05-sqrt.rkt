#lang sicp

; 使用牛顿法求平方根

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (square x)
  (* x x))

; 求改进值
(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

; 将1作为初始猜测值
(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.0004)

(sqrt 9)

(sqrt (+ (sqrt 256) (sqrt 81)))

(sqrt 10000000000000000)