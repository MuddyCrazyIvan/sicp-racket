#lang racket

(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a) (accumulate combiner
                                   null-value
                                   term
                                   (next a)
                                   next
                                   b))))

(define (product term a next b) (accumulate * 1 term a next b))
(define (value a) a)
(define (inc a) (+ a 1))
(define (product-values a b) (product value a inc b))
(product-values 0 4)
(product-values 1 4)
(product-values 2 4)
(product-values 3 4)

(define (sum term a next b) (accumulate + 0 term a next b))
(define (sum-values a b) (sum value a inc b))
(sum-values 0 4)
(sum-values 1 4)
(sum-values 2 4)
(sum-values 3 4)
