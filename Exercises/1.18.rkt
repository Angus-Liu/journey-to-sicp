#lang sicp

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (multi a b)
  (multi-iter a b 0))

(define (multi-iter a b c)
  (cond ((= b 0) c)
        ((even? b) (multi-iter (double a) (halve b) c))
        (else (multi-iter (double a) (halve (- b 1)) (+ a c)))))