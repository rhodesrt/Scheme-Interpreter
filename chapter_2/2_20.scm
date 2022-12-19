#lang sicp

(define (isSameParity startInt testInt)
    (if (and (= (remainder startInt 2) 0) (= (remainder testInt 2) 0))
        #t
        #f))

(define (sameParity firstInt . integers)
  (define (sameParityRecurse list)
    (if (null? (cdr list))
        (if (isSameParity firstInt (car list))
            (car list)
            nil)
        (if (isSameParity firstInt (car list))
            (append (car list) (sameParityRecurse list))
            (append nil (sameParityRecurse list)))))
  (sameParityRecurse integers))

(sameParity 1 2 3 4 5)

;; Above solution does not work