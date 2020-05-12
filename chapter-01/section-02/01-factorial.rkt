#lang sicp

; 阶乘的递归求解
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

(factorial 10)