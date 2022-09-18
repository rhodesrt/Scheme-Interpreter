#lang sicp

; Recursive vs. Iterative implementation of:
;  f(n) = n if n < 3 && f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3

(define (recursiveF n)
  (cond ((< n 3) n)
    (else (+
            (recursiveF (- n 1))
            (* 2 (recursiveF (- n 2)))
            (* 3 (recursiveF (- n 3)))))))

(recursiveF 5)

(define (iterativeF n)
  (iterativeStep 0 1 2 n))
  
  (define (iterativeStep a b c n)
    (cond ((= n 2) c)
      (else (iterativeStep b c (+ c (* 2 b) (* 3 a)) (- n 1)))))

(iterativeF 5)