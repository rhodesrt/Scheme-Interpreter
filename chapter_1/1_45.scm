#lang sicp

; Procedure for computing nth roots using n-order average damping, fixed point methods, and repeat function transforms

(define (average x y)
  (/ (+ x y) 2))

(define tolerance 0.0001)

(define (fixedPoint f firstGuess)
  (define (isCloseEnough v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (isCloseEnough guess next)
        next
        (try next))))
  (try firstGuess))

(define (averageDamp f)
  (lambda (x) (average x (f x))))

(define (step f n accumulator)
  (if (= n 0)
      accumulator
      (step f (- n 1) (f accumulator))))

(define (repeated f n)
  (lambda (x) (step f n x)))

(define (nRoot x n)
  (fixedPoint ((repeated averageDamp (- n 1)) (lambda (y) (/ x (expt y (- n 1)))))  1.0))

(nRoot 49 2)
(nRoot 729 3)
(nRoot 256 4)
(nRoot 4084101 5)
(nRoot 10000000 10)
