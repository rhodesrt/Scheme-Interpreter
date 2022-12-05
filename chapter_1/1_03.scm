#lang sicp

;Define a procedure that takes three numbers as arguments and returns the sum
;of the squares of the two larger numbers.

(define (square x)
  (* x x))

(define (max x y)
  (cond ((< x y) y)
  (else x)))

(define (min x y)
  (cond ((< x y) x)
  (else y)))

(define (maxOfThree x y z)
  (max (max x y) z))

(define (minOfThree x y z)
  (min (min x y) z))

(define (midOfThree x y z)
  (- (+ x y z) (maxOfThree x y z) (minOfThree x y z)))

(define (solutionFunction x y z)
  (+ (square (maxOfThree x y z)) (square (midOfThree x y z))))

(solutionFunction 1 2 3)
