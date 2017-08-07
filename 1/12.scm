; SICP exercise 1.12
;
; The following pattern of numbers is called Pascal's triangle.
;
;     1
;    1 1
;   1 2 1
;  1 3 3 1
; 1 4 6 4 1
;    ...
;
; The numbers at the edge of the triangle are all 1, and each number inside
; the triangle is the sum of the two numbers above it. Write a procedure that
; computes elements of Pascal's triangle by means of a recursive process.

(define (binomial-coefficient row index)
  (cond ((= index 1) 1)
        ((= row index) 1)
        (else (+ (binomial-coefficient (- row 1) (- index 1))
                 (binomial-coefficient (- row 1) index)))))
