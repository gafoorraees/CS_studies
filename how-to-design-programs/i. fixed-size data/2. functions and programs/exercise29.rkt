;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise29) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 29. After studying the costs of a show, the owner discovered several ways of lowering the cost. As a result of these improvements,
;; there is no longer a fixed cost; a variable cost of $1.50 per attendee remains.

(define (attendees ticket-price)
  (- BASE-ATTENDEES (* (- ticket-price BASE-TICKET-PRICE) (/ ATTENDEES-CHANGE PRICE-CHANGE))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (* ATTENDEE-COST (attendees ticket-price)))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define BASE-ATTENDEES 120)
(define BASE-TICKET-PRICE 5.0)
(define ATTENDEES-CHANGE 15)
(define PRICE-CHANGE 0.1)
(define ATTENDEE-COST 1.50)


(profit 3) ; 630
(profit 4) ; 675
(profit 5) ; 420
