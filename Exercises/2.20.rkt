#lang sicp

; 过滤器：接受一个谓词函数和待过滤列表
(define (filter predicate items)
  (cond ((null? items) nil)
        ((predicate (car items)) (cons (car items) (filter predicate (cdr items))))
        (else (filter predicate (cdr items)))))
 
(define (same-partity . l)
  (if (null? l)
      nil
      (filter
          (if (even? (car l))
              even?
              odd?)
          l)))

(same-partity 2 3 4 5 6 7 89)
(same-partity 1)
(same-partity)
                  