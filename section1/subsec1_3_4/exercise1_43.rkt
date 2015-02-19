#lang racket

(define (compose f g) (lambda (x) (f (g x))))
(define (dec a) (- a 1))

(define (repeated f a) (lambda (x) (if (< a 2)
                                     (f x)
                                     ((compose f (repeated f (dec a))) x))))

(define (sqr a) (* a a))

((repeated sqr 2) 5)
