#lang sicp

(define (squareTree tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (* tree tree))
        (else (cons (squareTree (car tree))
                    (squareTree (cdr tree))))))

(define (squareTreeMap tree)
  (map (lambda (subTree)
         (if (pair? subTree)
             (squareTreeMap subTree)
             (* subTree subTree)))
       tree))

