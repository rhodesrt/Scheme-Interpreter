#lang sicp

; Approximate Lambert's tangent function

(define y 10001)

(define (tangent x k)
  (if (= k 0)
      (+ k 1)
      (- (- y k) (/ (* x x) (tangent x (- k 2))))))

(define (lambertTangent x k)
  (/ x (tangent x k)))

(lambertTangent 15.0 10000)

(lambertTangent 25.0 10000)

(lambertTangent 100.0 10000)