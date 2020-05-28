#lang sicp

(define (square a)
  (* a a))

; f(x,y)=x(1+xy)^2+y(1-y)+(1+xy)(1-y)
; 可表述成：
; a=1+xy
; b=1-y
; f(x,y)=xa^2+yb+ab
(define (f x y)
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    (+ (* x (square a))
       (* y b)
       (* a b))))

(f 1 2)