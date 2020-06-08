#lang sicp

(define one-through-four (list 1 2 3 4))

one-through-four

(car one-through-four)

(car (cdr one-through-four))

(cons 0 one-through-four)

; 根据下标获取元素
(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define items (list 2 345 6 7 1 -1))

(list-ref items 3)
(list-ref items 5)

; 获取列表长度
(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(length items)

; 合并列表
(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))


(append items (list 1 1 1 1))