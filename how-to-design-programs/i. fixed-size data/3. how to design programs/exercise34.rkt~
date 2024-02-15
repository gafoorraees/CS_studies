;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise34) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 34. Design the function string-first, which extracts the first character from a non-empty string. Don’t worry about empty strings.

; We use the string data type to represent textual information.
; String -> 1String
; Extracts the first character of a string (and returns it)
; given: "hello world", expect: "h"
; given: "JavaScript," expect: "J"
; (define (string-first s) (... s ...)

(define (string-first str)
  (string-ith str 0))

(string-first "hello world") ; "h"
(string-first "JavaScript") ; "J"