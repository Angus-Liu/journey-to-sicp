#lang sicp

;(define balance 100)

;(define (withdraw amount)
;  (if (>= balance amount)
;      (begin
;        (set! balance (- balance amount))
;        balance)
;      "Insuffcient founds"))

(define new-withdraw
  (let ((balance 100))
    (lambda (amount)
      (if (>= balance amount)
          (begin
            (set! balance (- balance amount))
            balance)
          "Insuffcient founds"))))

