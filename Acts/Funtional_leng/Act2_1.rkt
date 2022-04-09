#|
Activity 2.1
Funtional programming part 1

Autor: Iwalani Amador Piaga - A01732251



; Reference of a tail recursive function
(define (! n)
  " Using a named let for tail recursion "
  (let loop
    ([n n] [a 1])
    (if (zero? n)
      a
      (loop (- n 1) (* n a)))))
|#


#lang racket
(require math/statistics) ; Mathematical library that contains the necessary functions for the exercises




; Ex.15  --> Dot-product function (list entries a and b) 
(define (dot-product listA listB) ; Definition of the lists
  (let loop
    ([lst listA][lst2 listB][result 0]) ; loop id creation for lists 
    (if (or (empty? lst)(empty? lst2)) ; Check for empty lists
        result
        (loop (cdr lst) (cdr lst2) (+ (* (car lst) (car lst2)) result))))) ; There are no empty lists, run the loop to get the dot product 

; Ex.16  --> Average function that takes a list as input and returns its arithmetic mean

(define (len-tail lst) 
  "Length with tail recursion"
  (let loop
    ([lst lst][result 0]) 
    (if (empty? lst) 
        result
        (loop(cdr lst)(+ 1 result)))))
; Need a pendent token 

(define (average lst) ; Function with input "lst" 
  (define n (len-tail lst)) 
  (if (empty? lst) ; In case the list is empty
      0
  (let loop 
    ([lst lst][sum 0])
    (if (empty? lst)
        (exact->inexact (/ sum n)) ; Converts to an inexact number, if it is already, it returns it. 
        (loop  (cdr lst) (+ (car lst) sum)))))) ;Returns the 1st of the pair / Returns the 2nd 

; Ex.17  --> the standard-deviation function receives a list input and returns the standard deviation
(define (standard-deviation lst) ; Function with input "lst" 
  (define n (len-tail lst)) ; Using Length with tail recursion
  (define avg (average lst))
  (if (empty? lst) ; In case the list is empty 
      0
      ; (stddev lst) --> Racket function that calculates the deviation - having it, the following calculation is not necessary
  (let loop
    ([lst lst][sum_in 0])
    (if (empty? lst)
        (exact->inexact (sqrt (/ sum_in n))) ; Returns the square root and Converts to an inexact number
        (loop (cdr lst) (+ (expt (- (car lst) avg) 2) sum_in)))))) ; expt - retuns Zraised to the power of w 


; Ex.20  --> Binary function that receives an integer and converts it to a binary list, if it is equal to zero it returns an empty list.
(define (binary n)
  (cond ((zero? n) '()) ; In case the integer = 0
        (else
         (flatten (cons ; match wall expressions of a list, like a binary tree / returns the assigned pair
                   (binary (quotient n 2))
                   (list (remainder n 2))))))) ; Returns q with the same sign as n such that 
        