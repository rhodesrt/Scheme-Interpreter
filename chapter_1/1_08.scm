#lang sicp

;Newton's method for cube roots is based on the fact that if y is an
;approximation to the cube root of x, then a better approximation is given by
;the value (x / y^2 + 2y) / 3
;Use this formula to implement a cube-root procedure analogous to the square-
;root procedure.

(define (square x)
  (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (goodEnough? guess x)
  (< (abs (- (improve guess x) guess)) (* guess 0.001)))

(define (cubeRootIter guess x)
  (if (goodEnough? guess x)
    guess
    (cubeRootIter (improve guess x) x)))

(define (cubeRoot x)
  (cubeRootIter 1.0 x))

(cubeRoot 64)