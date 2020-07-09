#lang sicp

(define (make-from-mag-ang x y)
  (define (dispatch op)
    (cond ((eq? op 'real-part) (* x (cos y)))
          ((eq? op 'image-part) (* x (sin y)))
          ((eq? op 'magnitude) x)
          ((eq? op 'angle) y)
          (else (error "Unkonw o -- MAKE-FROM-MAG-ANG" op))))
  dispatch)

((make-from-mag-ang 1 2) 'magnitude)