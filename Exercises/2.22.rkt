#lang sicp

(define (square x) (* x x))

(define (reverse items)
  (define (reverse-iter it1 it2)
    (if (null? it1)
        it2
        (reverse-iter (cdr it1) (cons (car it1) it2))))
  (reverse-iter items '()))

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things)) answer))))
  (iter (reverse items) nil))

(square-list (list 1 2 3 4 5 6))

