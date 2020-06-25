#lang sicp

; (define (sum f h yk a b n k)
;  (if (> k n)
;      0
;      (+ (cond ((or (= k 0) (= k n)) (yk a k))
;               ((even? k) (* 2 (yk a k)))
;               (else (* 4 (yk a k))))
;         (sum f h yk a b n (inc k)))))

;(define (simpson-rule f a b n)
;  (define h (/ (- b a) n))
;  (define (yk a k)
;    (f (+ a (* k h))))
;  (* (/ h 3) (sum f h yk a b n 0)))
;
;(define (cube n)
;  (* n n n))

;(simpson-rule cube 0 1 100)
;(simpson-rule cube (exact->inexact 0) 1 100)

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
