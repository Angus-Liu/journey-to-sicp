#lang sicp

(define balance 100)

(define (withdraw amount)
  (if (>= balance amount)
      (begin
        (set! balance (- balance amount))
        balance)
      "Insuffcient founds"))
