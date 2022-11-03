#lang sicp

(define (even? n)
  (= (modulo n 2) 0))

(define (square n)
  (* n n))

(define (fermatTest n)
  (define (tryIt a)
    (= (expMod a n n) a))
  (tryIt (+ 1 (random (- n 1)))))

(define (fastPrime? n times)
  (cond ((= times 0) true)
  ((fermatTest n) (fastPrime? n (- times 1)))
  (else false)))

  (define (expMod base exp m)
    (cond ((= exp 0) 1)
    ((even? exp)
      (remainder (square (expMod base (/ exp 2) m))
                  m))
    (else (remainder (* base (expMod base (- exp 1) m))
          m))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (timedPrimeTest n)
  (newline)
  (display n)
  (startPrimeTest n (runtime)))

(define (startPrimeTest n startTime)
  (if (fastPrime? n 15)
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
      (if (fastPrime? start 15)
          (printAndIncrement start count)
          (printThreePrimes (+ start 1) count))))

(printThreePrimes 1000 0)
(printThreePrimes 10000 0)
(printThreePrimes 100000 0)
(printThreePrimes 1000000 0)