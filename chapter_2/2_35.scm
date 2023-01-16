#lang sicp

(define (countLeaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (countLeaves (car x))
                 (countLeaves (cdr x))))))

(define (countLeavesAcc tree)
  (accumulate +
              0
              (map (lambda (node)
                     (if (pair? node)
                         (countLeavesAcc node)
                         1))
                    tree)))