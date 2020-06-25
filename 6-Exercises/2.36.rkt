#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))


(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      nil
      (cons (accumulate op init (map car seqs)) ; 取每个集合第一位做规约运算
            (accumulate-n op init (map cdr seqs))))) ; 取剩下元素组成的集合做规约运算

(define s (list (list 1 2 3) (list 20 3 4) (list 30 4 5)))

(accumulate-n * 10 s)
