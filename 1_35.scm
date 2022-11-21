#lang sicp

; Show that the golden ratio is a fixed point of the transformation x => 1 + 1/x.
; Compute the golden ratio using the fixedPoint procedure

(define tolerance 0.0000001)

(define (fixedPoint f startingPoint)
  (define (isCloseEnough x1 x2)
    (< (abs (- x1 x2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (isCloseEnough guess next)
          next
          (try next))))
  (try startingPoint))

(fixedPoint (lambda (x) (+ 1 (/ 1 x))) 1.0) ; 1.6180339631667064 == golden ratio