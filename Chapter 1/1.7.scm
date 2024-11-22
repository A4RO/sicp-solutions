;For small numbers the calculation won't be very accurate because the program will stop running too soon.
;For large numbers it might take a very long time to reach the 0.001 difference

;The program below will work better for small and large numbers than the other program
#lang scheme

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs(- guess (improve guess x)))
     (abs(* guess 0.001))))

(define (sqrt x)
  (sqrt-iter 1.0 x))
