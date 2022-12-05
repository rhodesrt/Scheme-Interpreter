#lang sicp

; Write a procedure that takes as inputs a procedure that computes f and a positive integer n and returns the procedure that computes the nth repeated application of f

(define (step f n accumulator)
  (if (= n 0)
      accumulator
      (step f (- n 1) (f accumulator))))


(define (repeated f n)
  (lambda (x) (step f n x)))

((repeated (lambda (x) (* x x)) 2) 5) ;625
