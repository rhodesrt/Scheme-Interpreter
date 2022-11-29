#lang sicp

; Write a procedure that takes as inputs a procedure that computes f and a positive integer n and returns the procedure that computes the nth repeated application of f

(define (compose f n x)
  (lambda (x) (
