#lang sicp

(define (makeInterval a b)
  (cons a b))

(define (upperBound interval)
  (max (car interval) (cdr interval)))

(define (lowerBound interval)
  (min (car interval) (cdr interval)))

(define (subtractInterval x y)
  (makeInterval (- (lowerBound x) (upperBound y))
                (- (upperBound x) (lowerBound y))))

(define (divideInterval x y)
  (if (and (<= (lowerBound y) 0) (>= (upperBound y) 0))
      (display "Error - divisor spans zero.")
      (multiplyInterval x
                        (makeInterval (/ 1.0 (upperBound y))
                                      (/ 1.0 (lowerBound y))))))

(define (makeCenter center percentageTolerance)
  (makeInterval (- center (* percentageTolerance center)) (+ center (*percentageTolerance center))))


