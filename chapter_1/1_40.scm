#lang sicp

; Define cubic procedure that can be used with newtonsMethod()

(define (cubic a b c)
  (lambda (x) (+ ((* x x x) (* (* a x) (* a x)) (* b x) c))))

