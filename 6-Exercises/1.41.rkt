#lang sicp

(define (double f)
  (lambda (x)
    (f (f x))))

((double inc) 1)

; 执行 2^4
(((double (double double)) inc) 5)