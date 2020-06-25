#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      nil
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))

; dot-product
(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define v (list 1 2 3 4))

(define w (list 2 2 2 2))

(dot-product v w)

; matrix-*-vector
(define (matrix-*-vector m v)
  (map (lambda (w) (dot-product v w))  m))

(define matrix (list (list 1 2)
                     (list 3 4)))

(define w2 (list 1 2))

(matrix-*-vector matrix w2)

; transpose 
(define (transpose mat)
  (accumulate-n cons '() mat))

(transpose matrix)

; |1 2|     |1 2|
; |3 4|  *  |3 4|
; matrix-*-matrix
(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (l) (matrix-*-vector cols l)) m)))

(matrix-*-matrix matrix matrix)


(define m2 (list (list 1 2 3)
                 (list 4 5 6)
                 (list 6 7 8)))

(matrix-*-matrix m2 m2)