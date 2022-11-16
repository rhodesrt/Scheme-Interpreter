#lang sicp

; Using Simpson's Rule to find the integral of (cube) between 0 and 1

(define (cube x)
  (* x x x))

(define (inc n)
  (+ n 1))

(define (helper k n)
  (cond ((= k 0) 1)
        ((= k n) 1)
        ((even? k) 2)
        (else 4)))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (yk k) (f (+ a (* k h))))
  (define (simpsonTerm k)
    (* (cond ((= k 0) 1)
             ((= k n) 1)
             ((even? k) 2)
             (else 4))
       (yk k)))
  (* (/ h 3) (sum simpsonTerm 0.0 inc n)))

(integral cube 0 1 100)
(integral cube 0 1 1000)