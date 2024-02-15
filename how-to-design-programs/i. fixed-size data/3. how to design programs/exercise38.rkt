;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise38) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;;
;; Exercise 38. Design the function string-remove-last, which produces a string like the given one with the last character removed.

;; We use the string data type to represent and modify textual information
;; String -> String
;; The function takes an input string and returns a new string with the last character removed.
;; given: "hello world" expect: "hello worl"
;; given: "A Silent Voice" expect: "A Silent Voic"
;; (define (string-remove-last str) (...str...))

(define (string-remove-last str)
  (substring str 0 (- (string-length str) 1)))

(string-remove-last "hello world") ; "hello worl"
(string-remove-last "A Silent Voice") ; "A Silent Voic"