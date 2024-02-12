;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise27) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 27. Our solution to the sample problem contains several constants in the middle of functions. As One Program, Many Definitions already points out,
;; it is best to give names to such constants so that future readers understand where these numbers come from. Collect all definitions in DrRacket’s definitions area
;; and change them so that all magic numbers are refactored into constant definitions. 

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

