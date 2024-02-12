;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise26) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 26. What do you expect as the value of this program:
;; Confirm your expectation with DrRacket and its stepper.

(define (string-insert s i)
  (string-append (substring s 0 i)
                 "_"
                 (substring s i)))

(string-insert "helloworld" 6)

;; The value of this program will be "hellow_orld". We insert the "_" character at the index position before index 6 (the second "o") in the input string
;; by appending it to the substring that includes the first character (index 0, "h") and up to but not including the character at the ith position.
;; (in this case, we pass the argument 6 for the character at index 6). Finally, we append to the end of our return string the substring that includes the character at the ith position (index 6)
;; up to the end of the string. 
