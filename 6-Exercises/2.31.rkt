#lang sicp

(define (map tree proc)
    (cond ((null? tree) nil)
        ((not (pair? tree)) (proc tree))
        (else (cons (map (car tree) proc)
                    (map (cdr tree) proc)))))

(define (square x) (* x x))

(define (square-tree tree) (map tree square))

(define tree (list 1 (list 2 (list 3 (list 4 5)))))

tree

(square-tree tree)