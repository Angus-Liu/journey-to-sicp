#lang sicp

(define (fringe items)
  (cond ((null? items) '()) ; 空树
        ((not (pair? items)) (list items)) ; 叶子节点
        (else (append (fringe (car items)) ; 处理左子树
                      (fringe (cdr items)))))) ; 处理右子树


(define items (list 1 (list 2 3) (list 3 4 (list 5))))

items

(fringe items)