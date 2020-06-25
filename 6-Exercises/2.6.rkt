#lang sicp

; Church 计数

; 表示 0
(define zero (lambda (f) (lambda (x) x)))

; +1
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

; 1

;(add-1 zero)
;(add-1 (lambda (f) (lambda (x) x)))
;(lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) x)) f) x)))))
;(lambda (f) (lambda (x) (f (((lambda (x) x) x)))))

; 1
(define one (lambda (f) (lambda (x) (f x))))

; 2
; 数值每 + 1，增加一个 f 函数的嵌套
(define two (lambda (f) (lambda (x) (f (f x)))))

; Church 加法
(define + 
  (lambda (m)
    (lambda (n)
      (lambda (f)
        (lambda (x)
          (m f (n f x)))))))

((+ one) two)