#lang sicp

; Design a procedure that evolves an iterative exponentiation process that uses successive
; squaring and uses a logarithmic number of steps.

(define (even? n)
  (= (/ n 2) 0))

(define (expt b n)
  (exptStep 1 b n))

(define (exptStep a b n)
  (cond ((= n 0) a)
        ((not (even? a)) (exptStep (* a b) b (- n 1)))
        ((even? a) (exptStep (* b b) b (/ n 2)))))

(expt 2 1000)