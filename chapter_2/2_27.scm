#lang sicp

(define x (list (list 1 2) (list 3 4)))
(define z (list 1 2 3 4))

x

(define (reverse y)
  (if (null? y)
      y
      (append (reverse (cdr y)) (cons (car y) nil))))

(reverse x)

(define (deepReverse y)
  (if (pair? y)
  (reverse (map deepReverse y))
  y))

(deepReverse x)