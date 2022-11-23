#lang sicp

; Finite continued fraction procedure approximating the golden ratio to 4 decimal places

(define (continuedFraction n d k)
  (if (= k 0)
      (/ (n k) (d k))
      (+ (/ (n k) (d k)) (continuedFraction n d (- k 1)))))

(continuedFraction (lambda (i) 1.0) (lambda (i) 1.0) 20)