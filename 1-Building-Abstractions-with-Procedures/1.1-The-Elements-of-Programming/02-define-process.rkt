#lang sicp

(define (square x) (* x x))

(square 5)

(square (square 2))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 3 4)