#lang sicp

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))


(define (adjoin-set x set)
  (cons x set))

(define (union-set set1 set2)
  (if (null? set1)
      set2
      (cons (car set1)
            (union-set (cdr set1) set2))))

(define set1 '(a a b c))
(define set2 '(v a d s))

(union-set set1 set2)