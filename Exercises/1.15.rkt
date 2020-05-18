#lang sicp

(define (cube x) (* x x x))

; sinx = 3sin(x/3) - 4(sin(x/3))^3

(define (p x)
  (- (* 3 x)
     (* 4 (cube x))))

(define (sine angle)
  (if (<= (abs angle) 0.1)
      angle
      (p (sine (/ angle 3.0)))))

(sine 1)

(sine 0.5235988)

(sine 12.5)

; 12.5
; 4.167
; 1.389
; 0.463
; 0.154
; 0.051
; 五次
; log(3,n)