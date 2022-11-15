#lang sicp

; Using Simpson's Rule to find the integral of (cube) between 0 and 1

(define (cube x)
  (* x x x))

(define (simpsons f a b n)
  (define (h a b n)
    (/ (- b a) n))
  (define (next x)
    (x + 1)))