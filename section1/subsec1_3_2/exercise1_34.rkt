#lang racket

(define (f g)
  (g 2))

(define (square a) (* a a))

(f square)
(f (lambda (z) (* z (+ z 1))))

#In racket the compiler will complain that the second argument is not actually a function that can take a value as a parameter. I imagine that there is a similar issue in scheme because the function g has to accept 1 parameter to work with f. When f tries to stick 2 into itself it notices that 2 is not a valid function or value to use.
