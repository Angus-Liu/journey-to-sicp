#lang sicp

(define (count-leaves tree)
  (cond ((null? tree) 0) ;为空时返回0
        ((pair? tree) (+ (count-leaves (car tree)) (count-leaves (cdr tree)))) ; 非叶子节点，返回左右子树之和
        (else 1))) ; 叶子节点返回 1

(count-leaves (list (list 1 2 3 4) (list 1 2 3 4)))