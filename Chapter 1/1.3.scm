; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

#lang scheme

(define (sum-squares-two-largest x y z)
  (cond ((and (< x y) (< x z)) (sum-of-squares z y))
        ((and (< y x) (< y z)) (sum-of-squares z x))
        (else (sum-of-squares y x))))

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))
