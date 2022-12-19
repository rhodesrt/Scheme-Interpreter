#lang sicp

(define (firstDenomination coins)
  (car coins))

(define (exceptFirstDenomination coins)
  (cdr coins))

(define (noMore coins)
  (null? coins))

