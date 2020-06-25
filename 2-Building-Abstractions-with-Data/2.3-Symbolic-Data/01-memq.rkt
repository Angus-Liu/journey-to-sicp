#lang sicp

; 参数不在表中，返回 false；否则，返回第一次出现参数所在的子表
(define (memq i seq)
  (cond ((null? seq) false)
        ((eq? (car seq) i) seq)
        (else (memq i (cdr seq)))))

(memq 'apple '(pear apple prune))