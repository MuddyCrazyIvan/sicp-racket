#lang racket

(define (theFunctionRecurse n) (cond ((< n 3) n)
                          ((>= n 3) (+ (theFunctionRecurse (- n 1))
                                       (* 2 (theFunctionRecurse (- n 2)))
                                       (* 3 (theFunctionRecurse (- n 3)))))))

(theFunctionRecurse 1)

(theFunctionRecurse 2)

(theFunctionRecurse 3)

(theFunctionRecurse 4)

(theFunctionRecurse 5)

(theFunctionRecurse 6)

(define (theFunction target) (theFunctionIter 0 1 2 target))

(define (theFunctionIter a
                         b
                         c
                         target) (cond ((= target 1) b)
                                       ((= target 2) c)
                                       (else (theFunctionIter b 
                                                              c 
                                                              (+ c
                                                                 (* 2 b)
                                                                 (* 3 a))
                                                               (- target 1)))))

(theFunction 1)
(theFunction 2)
(theFunction 3)
(theFunction 4)
(theFunction 5)
(theFunction 6)
