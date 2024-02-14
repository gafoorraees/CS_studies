;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise30) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 30. Define constants for the price optimization program at the movie theater so that the price sensitivity of attendance
;; (15 people for every 10 cents) becomes a computed constant.

(define BASE-ATTENDEES 120)
(define BASE-TICKET-PRICE 5.0)
(define ATTENDEE-COST 1.50)
(define PRICE-CHANGE (/ 15 0.1))

(define (attendees ticket-price)
  (- BASE-ATTENDEES (* (- ticket-price BASE-TICKET-PRICE) PRICE-CHANGE)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (* ATTENDEE-COST (attendees ticket-price)))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))
