#lang sicp

(define (enumerate low high)
  (if (< high low)
      nil
      (cons low
            (enumerate (+ low 1) high))))

(define (accumulate op init seq)
  (if (null? seq)
      init
      (op (car seq)
          (accumulate op init (cdr seq)))))

(define (prime? a)
  (define (iter n)
    (cond ((= a 1) #f)
          ((> (* n n) a) #t)
          ((= (remainder a n) 0) #f)
          (else (iter (inc n)))))
  (iter 2))

(define (filter predicate items)
  (cond ((null? items) nil)
        ((predicate (car items)) (cons (car items) (filter predicate (cdr items))))
        (else (filter predicate (cdr items)))))

(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))

(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))


(define (unique-pairs n)
  (flatmap (lambda (i)
             (map (lambda (j)
                    (list i j))
                  (enumerate 1 (- i 1))))
           (enumerate 1 n)))

(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter prime-sum? (unique-pairs n))))

(prime-sum-pairs 10)


             
              