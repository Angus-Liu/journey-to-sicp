#lang sicp

(define (last-pair items)
  (cond ((null? items) nil)
        ((null? (cdr items)) (car items))
        (else (last-pair (cdr items)))))

(last-pair nil)

(last-pair (list 1))

(last-pair (list 1 2 3 4))