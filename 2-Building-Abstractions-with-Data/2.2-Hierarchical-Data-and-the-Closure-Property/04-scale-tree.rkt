#lang sicp

(define (scale-tree tree factor)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (* tree factor))
        (else (cons (scale-tree (car tree) factor)
                    (scale-tree (cdr tree) factor)))))

(define tree (list (list 1 2) (list 3 4)))

tree

(scale-tree tree 100)

(define (map tree proc)
    (cond ((null? tree) nil)
        ((not (pair? tree)) (proc tree))
        (else (cons (map (car tree) proc)
                    (map (cdr tree) proc)))))

(map tree (lambda (x) (- x 1)))