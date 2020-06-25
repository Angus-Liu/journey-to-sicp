#lang sicp

; 判断是否是偶数
(define (even? n)
  (= (remainder n 2) 0))

; 判断是否是奇数
(define (odd? n)
  (not (even? n)))


(define (fast-expt b n)
  (fast-expt-iter b n 1))

(define (fast-expt-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iter (* b b) (/ n 2) a))
        ((odd? n) (fast-expt-iter b (- n 1) (* b a)))))

(fast-expt 3 1)
(fast-expt 3 2)
(fast-expt 3 3)
(fast-expt 3 4)
(fast-expt 3 10)