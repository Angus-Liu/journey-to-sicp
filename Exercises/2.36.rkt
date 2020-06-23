#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (sub-seqs op seqs)
  (if (null? seqs)
      nil
      (cons (op (car seqs))
            (sub-seqs op (cdr seqs)))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      nil
      (cons (accumulate op init (sub-seqs car seqs))
            (accumulate-n op init (sub-seqs cdr seqs)))))

(define s (list (list 1 2 3) (list 20 3 4) (list 30 4 5)))

(accumulate-n + 0 s)
