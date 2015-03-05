#lang racket

(define (determine_sign_num n d) (if (< d 0) (* n -1) n))

(define (determine_sign_den n d) (if (< d 0) (* d -1) d))

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (abs a) (if (< a 0) (* a -1) a))

(define (make-rat n d)
  (let ((g (abs (gcd n d)))
        (n1 (determine_sign_num n d))
        (d1 (determine_sign_den n d)))
    (cons (/ n1 g) (/ d1 g))))

(make-rat -5 -2)
