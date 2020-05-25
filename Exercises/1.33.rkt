#lang sicp

(define (accumulate combiner null-value term filtered a next b)
  (if (> a b)
      null-value
      (combiner (if (filtered a)
                    (term a)
                    null-value)
                (accumulate combiner null-value term filtered (next a) next b))))


(define (prime? a)
  (define (iter n)
    (cond ((= a 1) #f)
          ((> (* n n) a) #t)
          ((= (remainder a n) 0) #f)
          (else (iter (inc n)))))
  (iter 2))

(prime? 1)
(prime? 2)
(prime? 3)
(prime? 4)
(prime? 5)
(prime? 6)
(prime? 7)
(prime? 8)
(prime? 9)
(prime? 10)

; 区间a到b所有素数之和
(define (sum-of-prime a b)
  (accumulate + 0 (lambda (x) x) prime? a (lambda (x) (inc x)) b))

; 2+3+5+7
(sum-of-prime 1 10)


(define (comprise? i n)
    (and (< i n)
         (= 1 (gcd i n))))

; 小于n的所有与n互素的正整数乘积
; 1 3 7 9
(define (product-of-coprimes n)
    (accumulate * 1 (lambda (x) x) (lambda (x) (comprise? x n)) 1 (lambda (x) (inc x)) n))

(product-of-coprimes 10) 