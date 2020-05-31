#lang sicp

(define (average x y)
  (/ (+ x y) 2))

(define (close-enough? x y)
  (< (abs (- x y)) 0.001))

(define (search f neg-point pos-point)
  (let ((mid-point (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
        mid-point
        (let ((test-value (f mid-point)))
          (cond ((negative? test-value)
                 (search f mid-point pos-point))
                ((positive? test-value)
                 (search f neg-point mid-point))
                (else mid-point))))))


(define (half-interval-method f x y)
  (let ((x-value (f x))
        (y-value (f y)))
    (cond ((and (negative? x-value) (positive? y-value))
           (search f x y))
          ((and (negative? y-value) (positive? x-value))
           (search f y x))
          (else
           (error "对应的函数值符号相同" x y)))))

(half-interval-method (lambda (x) x) -1.0 2.0)
