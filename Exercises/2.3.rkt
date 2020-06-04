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

; 定义矩形相关操作
; 将一条线段看做是矩形对角线，既可以确定一个矩形
(define make-rec cons)

; 获取矩形左上方点
(define rec-lu-point car)

; 获取矩形右下方点
(define rec-rd-point cdr)

; 获取矩形的长
(define (rec-long rec)
    (let ((lu (rec-lu-point rec))
          (rd (rec-rd-point rec)))
      (abs (- (x-point lu)
              (x-point rd)))))

; 获取矩形的宽
(define (rec-wide rec)
    (let ((lu (rec-lu-point rec))
          (rd (rec-rd-point rec)))
      (abs (- (y-point lu)
              (y-point rd)))))

; 计算面积
(define (cal-rec-area rec)
  (let ((length (rec-long rec))
        (width (rec-wide rec)))
    (* length width)))

; 计算周长
(define (cal-rec-per rec)
  (let ((length (rec-long rec))
        (width (rec-wide rec)))
    (* (+ length width) 2)))

(define rec (make-rec (make-point -1 0)
                      (make-point 2 2)))

(cal-rec-area rec)
(cal-rec-per rec)