#lang sicp

; Finite continued fraction procedure approximating the golden ratio to 4 decimal places

(define (continuedFractionRecursive n d k)
  (if (= k 0)
      (/ (n k) (d k))
      (/ (n k) (+ (d k) (continuedFractionRecursive n d (- k 1))))))

(continuedFractionRecursive (lambda (i) 1.0) (lambda (i) 1.0) 40)

(define (continuedFractionIterative n d k)
  (define (next prev)
    (/ (n k) (+ (d k) prev)))
  (define (iter i currentValue next)
    (if (> i k)
        (next currentValue)
        (iter (+ i 1) (next currentValue) next)))
  (iter 0 (/ (n k) (d k)) next))

(continuedFractionIterative (lambda (i) 1.0) (lambda (i) 1.0) 40)