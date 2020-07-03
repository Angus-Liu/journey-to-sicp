#lang sicp

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))


(define set '(a b c d e))

(element-of-set? 'a set)

(element-of-set? 'f set)