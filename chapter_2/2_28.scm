#lang sicp

(define y (list (list 1 2) (list 3 4)))

(define (fringe x)
  (cond ((null? x) x)
        ((number? x) (list x))
        (else (append (fringe (car x))
                      (fringe (cdr x))))))

(fringe y)
y