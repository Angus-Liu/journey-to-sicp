#lang sicp

; 练习1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 1 -10)
(a-plus-abs-b 1 10)
(a-plus-abs-b -1 10)
(a-plus-abs-b -1 -10)

