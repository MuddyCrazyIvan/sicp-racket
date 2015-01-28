#lang racket

(define (square x) (* x x))

(define (cubert-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubert-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 0.001))

(define (cubert x)
  (cubert-iter 1.0 x))

(cubert 27)
