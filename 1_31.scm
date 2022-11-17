#lang sicp

; write a procedure that returns the product of the values of a function at points
; over a given range.

(define (productRecursive term a next b)
  (if (> a b)
      1
      (* (term a)
         (productRecursive term (next a) next b))))

; Make it iterative

(define (productIterative term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

; Use product procedure to compute approximations to pi using the Wallis formula

(define (piNext n)
  (+ n 1))

(define (piTerm n)
  (if (even? n)
      (/ (+ n 2) (+ n 1))
      (/ (+ n 1) (+ n 2))))

(* (productIterative piTerm 1 piNext 7) 4.0)
(* (productIterative piTerm 1 piNext 200) 4.0)