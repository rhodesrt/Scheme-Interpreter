#lang sicp

(define (iterativeImprove isGoodEnough improve)
  (lambda (guess x) 
    (if (isGoodEnough guess x)
        guess
        ((iterativeImprove isGoodEnough improve) (improve guess x) x))))

(define (sqrtImprove guess x)
  (/ (+ guess (/ x guess)) 2))

(define (isGoodEnough guess x)
  (< (abs (- (* guess guess) x)) 0.01))

(define (sqrt guess x)
  ((iterativeImprove isGoodEnough sqrtImprove) guess x))

(sqrt 1.0 49)


