#lang sicp

; Design a multiplication procedure using only addition, double, and halve that uses a
; logarithmic number of steps.

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (even? n)
  (= (/ n 2) 0))

(define (multiply a b)
  (cond ((= b 0) 0)
        ((even? b) (+ (double a) (multiply (double a) (- (halve b) 1))))
        ((not (even? b)) (+ a (multiply a (- b 1))))))

(multiply 1473 731)