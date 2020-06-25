#lang sicp

; 区间相关算法

; 构造函数
(define (make-interval l u)
  (if (<= l u)
      (cons l u)
      (cons u l)))

; 取下边界
(define (lower-bound x)
  (min (car x) (cdr x)))

; 取上边界
(define (upper-bound x)
  (max (car x) (cdr x)))

; 区间加法
(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

; 区间减法(在加法基础上改进,相当于加负数)
(define (sub-interval x y)
  (add-interval x (make-interval (- (lower-bound y))
                                 (- (upper-bound y)))))

; 区间乘法
(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

; 区间除法（在乘法基础上改进，相当于乘倒数）
(define (div-interval x y)
  (mul-interval x (make-interval (/ 1 (lower-bound y))
                                 (/ 1 (upper-bound y)))))

; 打印函数
(define (print-interval i)
  (display "(")
  (display (lower-bound i))
  (display ",")
  (display (upper-bound i))
  (display ")")
  (newline))

(define i1 (make-interval 3 -1))

(define i2 (make-interval 5 2))

(print-interval (add-interval i1 i2))

(print-interval (sub-interval i1 i2))

(print-interval (sub-interval i2 i1))

(print-interval (mul-interval i1 i2))

(print-interval (div-interval i1 i2))


