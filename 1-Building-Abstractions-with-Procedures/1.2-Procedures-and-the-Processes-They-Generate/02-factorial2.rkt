#lang sicp

; 阶乘迭代求解
(define (fact-iter start product num)
  (if (> start num)
      product
      (fact-iter (+ 1 start)
                 (* start product)
                 num)))

(define (factorial n)
  (fact-iter 1 1 n))

(factorial 10)
  