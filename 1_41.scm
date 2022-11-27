#lang sicp

(define (double g)
  (lambda (x) (g (g x))))
