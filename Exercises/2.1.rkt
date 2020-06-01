#lang sicp

; (make-rat <n> <d>): 返回一个有理数,其分子是<n>,分母是<d>
(define (make-rat n d)
  (cond ((and (negative? n) (negative? d))
         (make-rat (- n) (- d)))
        ((negative? d)
         (make-rat (- n) (- d)))
        (else (let ((g (gcd n d)))
                 (cons (/ n g) (/ d g))))))

; (numer <x>): 返回有理数<x>的分子
(define (numer x)
  (car x))

; (denom <x>): 返回有理数<x>的分母
(define (denom x)
  (cdr x))



; 有理数加法
(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

; 有理数减法
(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

; 有理数乘法
(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

; 有理数除法
(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

; 有理数判断是否相等
(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (denom x) (numer y))))

; 打印有理数
(define (print-rat x)
  (display (numer x))
  (display  "/" )
  (display (denom x))
  (newline))


(define one-half (make-rat -1 2))
(define one-third (make-rat 1 -3))
(print-rat (add-rat one-half one-third))
(print-rat (add-rat one-half one-half))
(print-rat (add-rat one-third one-third))
(print-rat (sub-rat one-half one-third))
(print-rat (mul-rat one-half one-third))
(print-rat (div-rat one-half one-third))
(equal-rat? one-half one-third)