#lang sicp

; 帕斯卡三角形

(define (pascal m n)
  (cond ((> n m) (error "invalid param"))
        ((= 1 n) 1)
        ((= m n) 1)
        (else (+ (pascal (dec m) (dec n))
                 (pascal (dec m) n)))))

(pascal 1 1)
(pascal 2 1)
(pascal 2 2)
(pascal 3 2)
(pascal 10 9)