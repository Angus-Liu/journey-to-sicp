#lang sicp

(define (iterative-improve good-enough? improve)
  (lambda (first-guess)
    (define (try guess)
      (let ((next (improve guess)))
        (if (good-enough? guess next)
            next
            (try next))))
    (try first-guess)))
         
        