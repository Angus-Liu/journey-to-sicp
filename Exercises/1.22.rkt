#lang sicp

(define (square n)
  (* n n))

; 获取数的最小因子，从2开始尝试
(define (smallest-divisor n)
  (find-divisor n 2))

; 查找数的最小因子
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? n test-divisor) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

; 判断是否可被除尽
(define (divides? a b)
  (= (remainder a b) 0))

; 判断是否是质数（最小因子是数本身）
(define (prime? n)
  (= (smallest-divisor n) n))


(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " --- ")
  (display elapsed-time))

(define (search-for-primes n m)
  (timed-prime-test n)
  (if (< n m)
      (search-for-primes (inc n) m)))

(search-for-primes 1000 9999)