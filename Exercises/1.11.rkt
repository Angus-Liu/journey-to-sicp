#lang sicp

;       / n (n < 3)
;f(n)= |
;       \ f(n-1)+2f(n-2)+3f(n-3) (n >=3)

; f(n) 递归
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
(f 100) ; 跑到天荒地老

; f(n) 迭代，尾递归
(define (f2 n)
  (if (< n 3)
      n
      (f2-iter 0 1 2 n)))

(define (f2-iter n1 n2 n3 count)
  (if (< count 3)
      n3
      (f2-iter n2 n3 (+ (* 3 n1) (* 2 n2) n3) (dec count))))

(f2 1)
(f2 2)
(f2 3)
(f2 4)
(f2 5)
(f2 100) ; 秒出结果
    