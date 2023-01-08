#lang sicp

(define (leftBranch mobile)
  (car mobile))
(define (rightBranch mobile)
  (cdr mobile))

(define (branchLength branch)
  (car branch))
(define (branchStructure branch)
  (cdr branch))

(define (totalWeight mobile)
  (if (number? (branchStructure mobile))
      (+ (branchLength mobile) (branchStructure mobile))
      (+ (totalWeight (leftBranch mobile)) (totalWeight (rightBranch mobile)))))
    
(define (isBalanced mobile)
  (= (* (branchLength (leftBranch mobile)) (totalWeight (leftBranch mobile)))
     (* (branchLength (rightBranch mobile)) (totalWeight (rightBranch mobile)))))

