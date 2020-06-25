#lang sicp

(define (equal? l1 l2)
  (display "-----")
  (newline)
  (display l1)
  (newline)
  (display l2)
  (newline)
  (cond ((and (null? l1) (null? l2)) true)
        ((and (not (pair? l1)) (not (pair? l2))) (eq? l1 l2))
        ((or (null? l1) (null? l2)) false)
        (else (and (equal? (car l1) (car l2))
                   (equal? (cdr l1) (cdr l2))))))

(equal? (list 'a 'b 'c) '(a b c))

(equal? 'symbol 'symbol)
