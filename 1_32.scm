#lang sicp

; Define sum and product as a more general (accumulate) procedure

(define (accumulateRecursive combiner nullValue term a next b)
  (if (> a b)
      nullValue
      (combiner (term a)
                (accumulateRecursive combiner nullValue term (next a) next b))))

(define (accumulateIterative combiner nullValue term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))))
  (iter a nullValue))

(define (sum term a next b)
  (accumulateIterative + 0 term a next b))

(define (product term a next b)
  (accumulateIterative * 1 term a next b))

(define (piNext n)
  (+ n 1))

(define (piTerm n)
  (if (even? n)
      (/ (+ n 2) (+ n 1))
      (/ (+ n 1) (+ n 2))))

(* (product piTerm 1 piNext 200) 4.0)