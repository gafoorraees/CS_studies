;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise36) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;;
;; Exercise 36. Design the function image-area, which counts the number of pixels in a given image.

; We use the image data type and numbers to represent the pixels of an image.
; Image -> number
; The function takes an image argument and returns the number of pixels of that image, or the area.
; given: square with sides of 10. expect: 100
; given: rectangle with length of 10 and width of 5. expect: 50
; (define (image-area img) (... img ...))

(define (image-area img)
  (* (image-width img) (image-height img)))

(image-area (square 10 "solid" "red")) ; 100
(image-area (rectangle 5 10 "solid" "orange")) ; 50