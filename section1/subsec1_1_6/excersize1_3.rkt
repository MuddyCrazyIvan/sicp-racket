#lang racket

(define (square x) (* x x))

(define (sum-of-squares x y)
            (+ (square x) (square y)))

(define (sum-squares-two-largest x y z)
            (cond ((and (> x z) (> y z)) (sum-of-squares x y))
                  ((and (> y x) (> z x)) (sum-of-squares y z))
                  ((and (> x y) (> z y)) (sum-of-squares x z))))

(sum-squares-two-largest 3 4 5)
