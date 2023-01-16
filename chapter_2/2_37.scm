#lang sicp

(define (dotProduct v w)
  (accumulate + 0 (map * v w)))

(define (matrixVectorMult m v)
  (map (lambda (seq)
         (dotProduct seq v))
       m))

(define (transpose matrix)
  (accumulateN cons nil matrix))

(define (matrixMult m n)
  (let ((columns (transpose n)))
    (map (lambda (row) (matrixVectorMult cols row)) m)))