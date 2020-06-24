#lang sicp

(define (enumerate-interval low high)
  (if (< high low)
      nil
      (cons low
            (enumerate-interval (+ low 1) high))))

(define (accumulate op init seq)
  (if (null? seq)
      init
      (op (car seq)
          (accumulate op init (cdr seq)))))


(accumulate + 0 (enumerate-interval 1 10))