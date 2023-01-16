#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (accumulateN op initial sequences)
  (if (null? (car sequences))
      nil
      (cons (accumulate op initial (map car sequences))
            (accumulateN op initial (map cdr sequences)))))

(define testTree (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))

(accumulateN + 0 testTree)