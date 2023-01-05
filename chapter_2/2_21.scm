#lang sicp

(define (square x)
  (* x x))

(define (squareList items)
  (if (null? items)
      nil
      (cons (square (car items)) (squareList (cdr items)))))

(define (square-list items)
  (map (lambda (x) (* x x)) items))

(squareList (list 1 2 3 4))
(square-list (list 1 2 3 4))