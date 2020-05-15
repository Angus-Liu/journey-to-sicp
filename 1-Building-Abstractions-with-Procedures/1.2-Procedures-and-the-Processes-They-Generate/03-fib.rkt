#lang sicp

; 迭代计算过程求斐波拉契数
(define (fib n)
  (define (fib-iter a b count)
    (if (= 0 count)
        b
        (fib-iter (+ a b) a (- count 1))))
  (fib-iter 1 0 n))

(fib 10)