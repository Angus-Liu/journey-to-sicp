#lang sicp

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

; a)
(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cadr branch))

(define mobile (make-mobile
                (make-branch 2 20)
                (make-branch 3 (make-branch 5 6))))

mobile

(left-branch mobile)
(right-branch mobile)

(branch-length (left-branch mobile))
(branch-structure (left-branch mobile))

; b)
(define (total-weight mobile)
  (cond ((null? mobile) 0)
        ((not (pair? mobile)) mobile)
        (else (let ((left (left-branch mobile))
                    (right (right-branch mobile)))
                (+ (total-weight left)
                   (total-weight right))))))

(total-weight mobile)

