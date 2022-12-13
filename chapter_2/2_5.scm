#lang sicp

; Implement a non-negative pair with nothing but non-negative integers and addition given that a; pair is represented by the expression 2^a * 3^b

(define (construct a b)
  (* (expt 2 a) (expt 3 b)))

(define (oddIter y start)
  (if (= (remainder y 3) 0)
    (oddIter (/ y 3) (+ start 1))
    start))

(define (evenIter y start)
  (if (= (remainder y 2) 0)
    (evenIter (/ y 2) (+ start 1))
    start))

(define (cdr x)
  (oddIter x 0))

(define (car x)
  (evenIter x 0))

(define secondTestValue (construct 13 27))

(cdr secondTestValue)

(car secondTestValue)
