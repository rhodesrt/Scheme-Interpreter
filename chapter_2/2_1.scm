#lang sicp

; Implement constructRational that handles both positive and negative arguments

(define (isNegative x)
  (< x 0))

(define (constructRational x y)
  (cond ((and (isNegative x) (isNegative y)) (cons (abs x) (abs y)))
        ((or (isNegative x) (isNegative y)) (cons (- 0 x) (abs y)))
        (else (cons x y))))
