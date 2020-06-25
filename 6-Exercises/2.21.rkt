#lang sicp

(define (square-list items)
  (if (null? items)
      nil
      (cons (* (car items) (car items))
            (square-list (cdr items)))))


(square-list (list 1 2 3 4 5 6))

(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))

(define (spuare-list2 items)
  (map (lambda (x) (* x x)) items))

(spuare-list2 (list 1 2 3 4 5 6))
