;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise28) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 28. Determine the potential profit for these ticket prices: $1, $2, $3, $4, and $5.
;; Which price maximizes the profit of the movie theater? Determine the best ticket price to a dime. 

(define (attendees ticket-price)
  (- BASE-ATTENDEES (* (- ticket-price BASE-TICKET-PRICE) (/ ATTENDEES-CHANGE PRICE-CHANGE))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ PERFORMANCE-COST (* ATTENDEE-COST (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define BASE-ATTENDEES 120)
(define BASE-TICKET-PRICE 5.0)
(define ATTENDEES-CHANGE 15)
(define PRICE-CHANGE 0.1)
(define PERFORMANCE-COST 180)
(define ATTENDEE-COST 0.04)

(profit 1) ; 511.2
(profit 2) ; 937.2
(profit 3) ; 1063.2
(profit 4) ; 889.2
(profit 5) ; 415.2

;; The ticket-price of $3 maximizes the profit of the movie theater. 