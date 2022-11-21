#lang sicp

; Find fixed-point of x => log1000 / logx
; Print successive approximations

(define (average x y)
  (/ (+ x y) 2))

(define tolerance 0.00001)

(define (fixedPoint f startingPoint)
  (define (isCloseEnough x1 x2)
    (< (abs (- x1 x2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (display next)
      (newline)
      (if (isCloseEnough guess next)
          next
          (try next))))
  (try startingPoint))

(fixedPoint (lambda (x) (average x (/ (log 1000) (log x)))) 2.0)