#lang sicp

; 递归计算过程
; (define (+ a b)
;   (if (= a 0)
;       b
;       (inc (+ (dec a) b))))

; 对应代换模型
(+ 4 5)
(inc (+ 3 5))
(inc (inc (+ 2 5)))
(inc (inc (inc (+ 1 5))))

; 迭代计算过程
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(+ 4 5)
