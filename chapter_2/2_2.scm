#lang sicp

; makePoint, xPoint, yPoint && makeSegment, startPoint, endPoint && midPoint(lineSegment) => midpoint && printPoint(point)

(define (point x y)
  (cons x y))

(define (getX point)
  (car point))

(define (getY point)
  (cdr point))

(define (segment xPoint yPoint)
  (cons xPoint yPoint))

(define (getStart segment)
  (car segment))

(define (getEnd segment)
  (cdr segment))

(define (midPoint segment)
  (point (/ (+ (getX (getStart segment)) (getX (getEnd segment))) 2)))

(define (printPoint point)
  (newline)
  (display "(")
  (display (getX point))
  (display ",")
  (display (getY point))
  (display ")"))

(define testSegment
  (segment (point 1 1) (point 3 3)))

(getStart segment)
(getEnd segment)
(midPoint segment)
