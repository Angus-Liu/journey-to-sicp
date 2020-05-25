#lang sicp

(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

(define (term n)
  (/ (+ 2 (- n (remainder n 2)))
     (+ 1 (+ n (remainder n 2)))))

(define (next n)
  (inc n))

(product term 1 next 6)

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(product-iter term 1 next 6)
