#lang sicp

; Do Carmichael numbers really fool the Fermat Test?
; First six Carmichael numbers are: 561, 1105, 1729, 2465, 2821, 6601

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

(fastPrime? 561 559)
(fastPrime? 1105 1103)
(fastPrime? 1729 1727)
(fastPrime? 2465 2463)
(fastPrime? 2821 2819)
(fastPrime? 6601 6599)