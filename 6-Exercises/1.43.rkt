#lang sicp

(define (square x)
  (* x x))

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f count)
  (if (= count 1)
      f
      (compose f (repeated f (- count 1)))))

((repeated square 2) 5)
    