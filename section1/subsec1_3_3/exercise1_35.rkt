#lang racket

(define (random-function x) (+ 1 (/ 1 x)))

(define (abs value)
  (if (< value 0)
    (* -1 value)
    value))

(define tolerance 0.000001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
        next
        (try next))))
  (try first-guess))

(fixed-point random-function 1.0)
