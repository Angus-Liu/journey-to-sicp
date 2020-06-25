#lang sicp

; 练习1.5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; 正则序：完全展开后规约，结果为0
; 应用序：先求值参数而后应用，陷入p的递归，无结果
(test 0 p)
