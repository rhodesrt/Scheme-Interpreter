#lang sicp

; Implement representation for rectangles in a plane && getArea(rectangle) && getPerimeter(rectangle)

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

(define (rectangle segmentX segmentY)
  (cons segmentX segmentY))

(define (getPerimeter rectangle)
  (+ (* 2 (car rectangle)) (* 2 (cdr rectangle))))

(define (getArea rectangle)
  (* (cdr rectangle) (car rectangle)))

(define horizontalSegment (segment (point 2 2) (point 4 2)))

(define verticalSegment (segment (point 2 4) (point 4 4)))

(define testRectangle (rectangle horizontalSegment verticalSegment))

(getPerimeter testRectangle)

(getArea testRectangle)
