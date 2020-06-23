#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      nil
      (cons (accumulate op init (car )
            (accumulate-n op init ))))

(define s (list (list 1 2 3) (list 2 3 4) (list 3 4 5)))

(accumulate-n + 0 s)