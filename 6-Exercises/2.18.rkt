#lang sicp

(define (append items i)
  (if (null? items)
      (list i)
      (cons (car items) (append (cdr items) i))))

(define (reverse items)
  (if (null? items)
      nil
      (append (reverse (cdr items)) (car items))))

(reverse (list 1 2 3 4))


(define (reverse2 items)
  (define (reverse-iter it1 it2)
    (if (null? it1)
        it2
        (reverse-iter (cdr it1) (cons (car it1) it2))))
  (reverse-iter items '()))

(reverse2 (list 1 2 3 4))