#lang sicp

; 判断某一元素是否在集合中
(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))


(define set '(a b c d e))

(element-of-set? 'a set)

(element-of-set? 'f set)

; 如果某一元素在集合中不存在，则加入
(define (adjoin-set x set)
  (if (element-of-set? x set)
      set
      (cons x set)))

(adjoin-set 'f set)


; 求两个集合的交集
(define (intersection-set set1 set2)
  (cond ((or (null? set1) (null? set2)) '())
        ((element-of-set? (car set1) set2)
         (cons (car set1) (intersection-set (cdr set1) set2)))
        (else (intersection-set (cdr set1) set2))))

(define set1 '(a b c d))
(define set2 '(a b c e))
(intersection-set set1 set2)