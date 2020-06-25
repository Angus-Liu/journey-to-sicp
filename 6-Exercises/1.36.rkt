#lang sicp

(define tolerance 0.00001)

(define (close-enough? x y)
  (< (abs (- x y)) tolerance))

(define (println x)
  (display x)
  (newline))

(define (fixed-point f first-guess)
  (define (try guess)
    (println guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define formula
   (lambda (x) (/ (log 1000) (log x))))

(fixed-point formula 1.1)

(define (average x y)
  (/ (+ x y) 2))

(define (avg-damp f)
  (lambda (x)
    (average x (f x))))

(println "---分割线---")

(fixed-point (avg-damp formula) 1.1)
      