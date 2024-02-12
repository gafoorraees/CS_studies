;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise23) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 23. The first 1String in "hello world" is "h". How does the following function compute this result? 

(define (string-first s)
  (substring s 0 1))

(string-first "hello world")

;; When the function is called with a string argument, it returns the first character of that string.
;; The function does this through the substring method, which takes a string argument, a starting point index argument, and
;; an up to, but not including end character index. For the first character of a string, we need to pass to the method index 0
;; to start our substring, and index 1 to end our substring.