#lang sicp

; Write a generalized accumulate procedure that contains a filter

(define (accumulateIterative combiner nullValue term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))))
  (iter a nullValue))

(define (isPrimeWithStart x start)
  (if (> start (sqrt x))
      #t
      (if (= 0 (remainder x start))
          #f
          (isPrimeWithStart x (+ start 1)))))

(define (isPrime x)
  (isPrimeWithStart x 2))

(define (filteredAccumulate combiner filter nullValue term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (if (filter a b) ; only one argument if testing sumOfPrimeSquares
            (iter (next a) (combiner result (term a)))
            (iter (next a) result))))
  (iter a nullValue))

(define (next n)
  (+ n 1))

(define (square n)
  (* n n))

(define (sum x n)
  (+ x n))

(define (sumOfPrimeSquares a b)
  (filteredAccumulate sum isPrime 0 square a next b))

;; (sumOfPrimeSquares 3 11) ; 204
;; (sumOfPrimeSquares 5 13) ; 364

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (isRelativelyPrime a b)
  (= 1 (gcd a b)))

(define (relativePrimesTerm a)
  a)

(define (productOfRelativePrimes n)
  (filteredAccumulate * isRelativelyPrime 1 relativePrimesTerm 1 next n))

(productOfRelativePrimes 11) ; 3628800