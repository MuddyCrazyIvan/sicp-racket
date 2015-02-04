#lang racket

(define (pascalsTriangle x y) (cond ((and (= x 1) (= y 1)) 1)
                                    ((or (< x 0) (< y 0)) 0)
                                    (else (+ (pascalsTriangle x (- y 1))
                                             (pascalsTriangle (- x 1) (- y 1))))))

(pascalsTriangle 1 1)
(printf "~a ~a\n" (pascalsTriangle 1 2) (pascalsTriangle 2 2))
(printf "~a ~a ~a\n" (pascalsTriangle 1 3) (pascalsTriangle 2 3) (pascalsTriangle 3 3))
(printf "~a ~a ~a ~a\n" (pascalsTriangle 1 4) (pascalsTriangle 2 4) (pascalsTriangle 3 4) (pascalsTriangle 4 4))
(printf "~a ~a ~a ~a ~a\n" (pascalsTriangle 1 5) (pascalsTriangle 2 5) (pascalsTriangle 3 5) (pascalsTriangle 4 5) (pascalsTriangle 5 5))
