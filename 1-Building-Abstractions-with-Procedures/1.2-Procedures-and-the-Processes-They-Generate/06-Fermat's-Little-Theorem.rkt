#lang sicp

; 费马小定理：如果n是一个素数，a是小于n的任意正整数，那么a的n次方与a模n同余。

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
        (else (remainder (* base (expmod base (- exp 1) m)) m))))
                 