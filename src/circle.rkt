#lang racket

; sum of the squares of the first n natural numbers
(define (sum-of-squares n)
  (if (= n 1)
      1
      (+ (* n n) (sum-of-squares (- n 1)))))
 (print (sum-of-squares 69))