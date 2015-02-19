#lang racket

(define (compose f g) (lambda (x) (f (g x))))

(define (sqr a) (* a a))
(define (inc a) (+ a 1))

((compose sqr inc) 6)
