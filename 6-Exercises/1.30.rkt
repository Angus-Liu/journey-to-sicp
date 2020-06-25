#lang sicp

; (define (sum term a next b)
;  (if (> a b)
;      0
;     (+ (term a)
;         (sum term (next a) next b))))

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))

(define (term a) a)
(define (next a) (inc a))

(sum term 1 next 10)