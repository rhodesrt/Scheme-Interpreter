#lang sicp

;An alternative strategy for implementing good-enough? is to watch how guess
;changes from one iteration to the next and to stop when the change is a very
;small fraction of the guess. Design a square-root procedure that uses this kind
;of end test.

;Original implementation

;(define (good-enough? guess x)
;  (< (abs (- (square guess) x)) 0.001))

;(define (sqrt-iter guess x)
;  (if (good-enough? guess x)
;    guess
;    (sqrt-iter (improve guess x)
;               x)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

;Better implementation for very large or very small radicands

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) (* guess 0.001)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 16)