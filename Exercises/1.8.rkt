#lang sicp

; 练习1.8 求立方根

(define (cobe-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cobe-root-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (cube x)
  (* x x x))

; 求改进值
(define (improve y x)
  (/ (+ (/ x (* y y)) (* 2 y))
     3))

(define (average x y)
  (/ (+ x y) 2))

; 将1作为初始猜测值
(define (cube-root x)
  (cobe-root-iter 1.0 x))

(cube-root 125)

(cube-root 1)