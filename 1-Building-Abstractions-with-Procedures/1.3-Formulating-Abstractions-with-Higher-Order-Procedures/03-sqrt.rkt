#lang sicp

(define tolerance 0.00001)

(define (close-enough? x y)
  (< (abs (- x y)) tolerance))

(define (fixed-point f first-guess)
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
               1.0))

(sqrt 4)