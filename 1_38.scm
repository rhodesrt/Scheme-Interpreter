#lang sicp

; De Fractionibus Continuis

(define (continuedFractionIterative n d k)
  (define (next prev)
    (/ (n k) (+ (d k) prev)))
  (define (iter i currentValue next)
    (if (> i k)
        (next currentValue)
        (iter (+ i 1) (next currentValue) next)))
  (iter 0 (/ (n k) (d k)) next))

(define (continuedFractionRecursive n d k)
  (if (= k 0)
      (/ (n k) (d k))
      (/ (n k) (+ (d k) (continuedFractionRecursive n d (- k 1))))))

(define (eulerD i)
  (if (= 0 (remainder (- i 1) 3))
            (+ (* 2 2) (* 2 (/ (- i 1) 3)))
            1))

(define (e-euler k) 
   (+ 2.0 (continuedFractionIterative (lambda (i) 1) eulerD k)))

(define (approximate-e k)
  (+ (continuedFractionIterative (lambda (i) 1.0)
                (lambda (i) (if (= (remainder i 3) 2)
                                (* 2 (/ (+ i 1) 3))
                                1))
                k)
      2))

(+ 2.0 (continuedFractionIterative (lambda (i) 1.0) eulerD 50000))
(e-euler 50000)
(approximate-e 50000)