#lang sicp

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpson-rule f a b n)

  (define h (/ (- b a) n))

  (define (y k)
    (f (+ a (* k h))))

  (define (factor k)
    (cond ((or (= k 0) (= k n)) 1)
          ((even? k) 2)
          (else 4)))

  (define (term k)
    (* (factor k) (y k)))

  (define (next a)
    (inc a))
    
  (* (/ h 3)
     (sum term 0 next n)))

(define (cube n)
  (* n n n))

(simpson-rule cube 0 1 100)
(simpson-rule cube (exact->inexact 0) 1 100)
(simpson-rule cube (exact->inexact 0) 1 1000)

(define (dubble x)
  (* x x))

(simpson-rule dubble 0 1 100)
(simpson-rule dubble (exact->inexact 0) 1 100)
(simpson-rule dubble (exact->inexact 0) 1 1000)
