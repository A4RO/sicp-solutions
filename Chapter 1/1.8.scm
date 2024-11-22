#lang scheme

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (square guess))
    (* 2 guess))
    3))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs(- guess (improve guess x)))
     (abs(* guess 0.0001))))

(define (cbrt x)
  (cbrt-iter 1.0 x))
