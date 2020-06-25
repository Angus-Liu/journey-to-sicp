#lang sicp

(define (reverse items)
  (define (reverse-iter items res)
  (if (null? items)
      res
      (reverse-iter (cdr items) (cons (car items) res))))
  (reverse-iter items '()))

(reverse (list 1 2 3 4))

(define (deep-reverse items)
  (define (reverse-iter items res)
    (cond ((null? items) res)
          ((not (pair? items)) items)
          (else  (reverse-iter (cdr items) (cons (reverse-iter (car items) '()) res)))))
  (reverse-iter items '()))


(define x (list (list 1 2) (list 4 3)))

x

(reverse x)

(deep-reverse x)