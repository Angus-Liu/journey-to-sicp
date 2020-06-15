#lang sicp

(define (append i1 i2)
  (cond ((null? i1) i2)
        ((not (pair? i1)) (cons i1 i2))
        (else (cons (car i1) (append (cdr i1) i2)))))

(define (fringe items)
  (cond ((null? items) items)
        ((not (pair? items)) items)
        (else (append (fringe (car items)) (fringe (cdr items))))))


(define items (list 1 (list 2 3) (list 3 4 (list 5))))

items

(fringe items)