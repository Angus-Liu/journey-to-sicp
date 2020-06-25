#lang sicp

(define (for-each proc items)
  (if (not (null? items))
      (begin
        (proc (car items))
        (for-each proc (cdr items)))))

(for-each (lambda (x) (display x) (newline)) (list 1 2 3 4 5 6))