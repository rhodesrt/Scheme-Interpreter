(define (hornersAlgorithm x sequence)
  (accumulate (lambda (coefficient higherTerms)
                (+ coefficient
                   (* higherTerms x)))
              0
              sequence))