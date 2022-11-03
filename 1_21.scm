#lang sicp

; Use the smallestDivisor procedure to find the smallest divisor of each of the following
; numbers: 199, 1999, 19999

(define (square n)
  (* n n))

(define (divides? a b)
  (= (modulo b a) 0))

(define (findDivisor n testDivisor)
  (cond ((> (square testDivisor) n) n)
        ((divides? testDivisor n) testDivisor)
        (else (findDivisor n  (+ testDivisor 1)))))

(define (smallestDivisor n)
  (findDivisor n 2))

(define (prime? n)
  (= (smallestDivisor n) n))

(smallestDivisor 199)
(smallestDivisor 1999)
(smallestDivisor 19999)