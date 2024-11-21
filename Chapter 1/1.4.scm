;Describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;The procedure calculates the sum of a and absolute value of b. If b is positive, a+b is calculated. If b is negative, a-b is calculated and since b is negative it's the same as a+|b|.
