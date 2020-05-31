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


(define (f2 x y)
  (define a (+ 1 (* x y)))
  (define b (- 1 y))
    (+ (* x (square a))
       (* y b)
       (* a b)))

(f2 1 2)

(+ (let ((x 3))
      (+ x (* x 10)))
  5)

(define (f3 x y)
  (let ((x 3)
      (y (+ x 2)))
  (* x y)))

(f3 2 20)      
 