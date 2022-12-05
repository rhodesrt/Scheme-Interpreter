#lang sicp

(define dx .00001)

(define (smooth f)
  (lambda (x) (/ (+ (f (+ x dx)) (f x) (f (- x dx))) 3)))

(define (step f n accumulator)
  (if (= n 0)
      accumulator
      (step f (- n 1) (f accumulator))))

(define (repeated f n)
  (lambda (x) (step f n x)))

(define (nFoldSmooth f n)
  ((repeated smooth n) f))

