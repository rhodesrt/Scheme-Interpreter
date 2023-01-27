#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))

(define (filter predicate sequence)
  (cond ((null? sequence) nil)
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(define (enumerateInterval start n)
  (if (> start n)
      nil
      (cons start (enumerateInterval (+ start 1) n))))

(define (uniquePairs n)
  (flatmap (lambda (i)
            (map (lambda (j) (list i j))
            (enumerateInterval 1 (- i 1))))
           (enumerateInterval 1 n)))

(uniquePairs 10)