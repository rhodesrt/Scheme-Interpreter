#lang sicp

(define (square n)
  (* n n))

(define (divides? a b)
  (= (modulo b a) 0))

(define (findDivisor n testDivisor)
  (cond ((> (square testDivisor) n) n)
        ((divides? testDivisor n) testDivisor)
        (else (findDivisor n  (+ testDivisor 1)))))

(define (smallestDivisor n)
  (findDivisor n 2))

(define (prime? n)
  (= (smallestDivisor n) n))

(define (timedPrimeTest n)
  (newline)
  (display n)
  (startPrimeTest n (runtime)))

(define (startPrimeTest n startTime)
  (if (prime? n)
      (reportPrime (- (runtime) startTime))))

(define (reportPrime elapsedTime)
  (display " *** ")
  (display elapsedTime)
  (newline))

(define (printAndIncrement start count)
  (timedPrimeTest start)
  (printThreePrimes (+ start 1) (+ count 1)))

(define (printThreePrimes start count)
  (if (< count 3)
      (if (prime? start)
          (printAndIncrement start count)
          (printThreePrimes (+ start 1) count))))

(printThreePrimes 1000000000 0)
(printThreePrimes 10000000000 0)
(printThreePrimes 100000000000 0)
(printThreePrimes 1000000000000 0)