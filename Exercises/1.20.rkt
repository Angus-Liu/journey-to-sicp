#lang sicp

; 正则序：完全展开后规约，先不求出运算对象的值，知道实际需要它们的值时再去做。
; 应用序：先求值参数而后运用，先对运算符和各个运算对象求值，而后将得到的过程应用于得到的实际参数。

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

; 正则序
(gcd 206 40)
(gcd 40 (remainder 206 40))
(gcd 40 6)
(gcd 6 (remainder 40 6))
(gcd 6 4)
(gcd 4 (remainder 6 4))
(gcd 4 2)
(gcd 2 (remainder 4 2))
(gcd 2 0)
     