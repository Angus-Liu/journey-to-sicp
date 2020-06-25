#lang sicp

; 辅助函数
(define (average x y)
  (/ (+ x y)
     2.0))

; 定义点相关操作
(define make-point cons)

(define x-point car)

(define y-point cdr)

(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ", ")
  (display (y-point p))
  (display ")")
  (newline))

; 定义线段相关操作
(define make-segment cons)

(define start-segment car)

(define end-segment cdr)

(define (midpoint-segment seg)
  (let ((start (start-segment seg))
        (end (end-segment seg)))
    (make-point (average (x-point start)
                         (x-point end))
       
                (average (y-point start)
                         (y-point end)))))

(define segm (make-segment (make-point -1 -1)
                              (make-point 2 -1)))

(print-point  (midpoint-segment segm))