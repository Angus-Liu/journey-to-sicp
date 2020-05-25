#lang sicp

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (product a b)
  (accumulate * 1 (lambda (x) x) a (lambda (x) (inc x)) b))

(product 1 10)

(define (sum a b)
  (accumulate + 0 (lambda (x) x) a (lambda (x) (inc x)) b))

(sum 1 10)

; 迭代版
(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner (term a) result))))
  (iter a null-value))

(define (product-iter a b)
  (accumulate-iter * 1 (lambda (x) x) a (lambda (x) (inc x)) b))

(product-iter 1 10)

(define (sum-iter a b)
  (accumulate-iter + 0 (lambda (x) x) a (lambda (x) (inc x)) b))

(sum-iter 1 10)