#lang sicp

(define us-coins (list 50 25 10 5 1))

(define uk-coins (list 100 50 20 10 5 2 1 0.5))

; 取排除第一个值之后的 list
(define (except-first-denomination coins)
  (cdr coins))

; 取 list 第一位值
(define (first-denomination coins)
  (car coins))


; 零钱交换
(define (cc amount coins)
  (cond ((= amount 0) 1)
        ((< amount 0) 0)
        ((null? coins) 0)
        (else (+ (cc amount (except-first-denomination coins))
                 (cc (- amount (first-denomination coins)) coins)))))

(cc 100 us-coins)