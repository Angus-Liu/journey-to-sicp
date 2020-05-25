#lang sicp

(define (sum f h yk a b n k)
  (if (> k n)
      0
      (+ (cond ((or (= k 0) (= k n)) (yk a k))
               ((even? k) (* 2 (yk a k)))
               (else (* 4 (yk a k))))
         (sum f h yk a b n (inc k)))))

(define (simpson-rule f a b n)
  (define h (/ (- b a) n))
  (define (yk a k)
    (f (+ a (* k h))))
  (* (/ h 3) (sum f h yk a b n 0)))

(define (cube n)
  (* n n n))

(simpson-rule cube 0 1 100)

