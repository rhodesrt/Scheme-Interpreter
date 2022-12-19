#lang sicp

(define (lastPair list)
  (if (null? (cdr list))
      list
      (lastPair (cdr list))))

(define (reverseList list)
  (if (null? (cdr list))
      list
      (append (reverseList (cdr list)) (cons (car list) nil))))

(reverseList (list 1 2 3 4))
(lastPair (list 1 2 3 4))