#lang sicp

; Approximate Lambert's tangent function

(define (tangent x k)
  (let ((y k))
    (define (tangentTerm x z)
      (if (= z 0)
        (+ z 1)
        (- (+ 1 (- y z)) (/ (* x x) (tangentTerm x (- z 2))))))
    (tangentTerm x k)))

(define (lambertTangent x k)
  (/ x (tangent x k)))

(lambertTangent 15.0 100000)

(lambertTangent 25.0 100000)

(lambertTangent 100.0 100000)