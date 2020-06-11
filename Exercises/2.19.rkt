#lang sicp

; 换零钱
(define (count-change amount)
  (if (<= amount 0)
      0
      (count-change-iter amount 5)))

; 5元5种硬币换钱方式 = 5元除去第一种硬币的换钱方式 + 5元减去第一种硬币面值后的换钱方式(即已把第一种算入当前换钱方式中)
(define (count-change-iter amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (count-change-iter amount (- kinds-of-coins 1))
                 (count-change-iter (- amount (fisrt-denomination kinds-of-coins))  kinds-of-coins)))))

; 类似一个数组,存放不同面值的硬币
(define (fisrt-denomination kinds-of-coins)
  (cond((= kinds-of-coins 1) 1)
       ((= kinds-of-coins 2) 5)
       ((= kinds-of-coins 3) 10)
       ((= kinds-of-coins 4) 25)
       ((= kinds-of-coins 5) 50)))

(count-change 100)