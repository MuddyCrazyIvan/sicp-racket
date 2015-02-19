#lang racket

(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b))))

(define (inc a) (+ a 1))
(define (value a) a)

(define (product-values a b) (product value a inc b))

(product-values 0 4)
(product-values 1 4)
(product-values 2 4)
(product-values 3 4)

(define (skip-2 a) (+ a 2))
(define (sqr a) (* a a))
(define (product-sqrs a b) (product sqr a skip-2 b))
(define (pi) (/ 
             (* 2 
                (product-sqrs 4 
                              21)
                24) 
             (product-sqrs 3 21)))  

(pi)

(define (product-iter term a next b)
  (define (iter-part c result)
    (if (> c b)
        result
        (iter-part (next c) (* (term c) result))))
  (iter-part a 1))

(define (product-values-iter a b) (product-iter value a inc b))
(product-values-iter 0 4)
(product-values-iter 1 4)
(product-values-iter 2 4)
(product-values-iter 3 4)
