#lang sicp

(define (forEach procedure itemList)
  (cond ((null? itemList) #t)
        (else (procedure (car itemList))
              (forEach procedure (cdr itemList)))))

(forEach (lambda (x) (newline) (display x))
         (list 57 321 88))