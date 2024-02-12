;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise25) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;;Exercise 25. Take a look at this attempt to solve exercise 17:
;;Does stepping through an application suggest a fix? 

(define (image-classify img)
  (cond
    [(>= (image-height img) (image-width img)) "tall"]
    [(= (image-height img) (image-width img)) "square"]
    [(<= (image-height img) (image-width img)) "wide"]))

(image-classify (square 10 "outline" "orange"))

;; The step through shows that the program stops at line 1 since it compares the image height and image width, both 10, and
;; finds them to be equal.
;; This satisfies the condition ">=" and shows us the mistake: what we really want for the "tall" and "wide" return values are the ">" and "<"
;; operators respectively. 