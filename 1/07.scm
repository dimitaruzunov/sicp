; SICP exercise 1.7
;
; The good-enough? test used in computing square roots will not be very
; effective for finding the square roots of very small numbers. Also, in real
; computers, arithmetic operations are almost always performed with limited
; precision. This makes our test inadequate for very large numbers. Explain
; these statements, with examples showing how the test fails for small and
; large numbers. An alternative strategy for implementing good-enough? is to
; watch how guess changes from one iteration to the next and to stop when the
; change is a very small fraction of the guess. Design a square-root procedure
; that uses this kind of end test. Does this work better for small and
; large numbers?

; The original definitions:

(define (square-root x)
  (square-root-iter 1.0 x))

(define (square-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (square-root-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- x (square guess)))
     0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

; Firstly, we will show that the good-enough? test is inadequate for very small
; numbers. Let's examine the process of finding the square root of 0.00000004.
; The expected result is 0.0002. On the sixth iteration the guess is 0.0312.
; Its square is 0.0009 which is less than 0.001. Thus, the good-enough? test
; passes and the result of the process is 0.0312 which is way bigger than
; 0.0002. We can conclude that when we are finding the square root of a number
; which is less than 0.001, the error is significantly big.
;
; In order to show that the test is inadequate for very large numbers, we will
; try to find the square root of 1e+49. This causes an infinite loop. After the
; 87th iteration (average guess (/ x guess)) always evaluates to guess despite
; guess being different from (/ x guess). This is caused by the fact that
; arithmetic operations are performed with limited precision. Thus,
; (improve guess x) always evaluates to guess and the good-enough? test always
; fails, since the guess stops improving.
; Another example is 9e+100. The expected result is 3e+50 but the square-root
; procedure gives us 3.0000000000000002e+50. This happens because squaring
; 3.0000000000000002e+50 results inaccurately in 9e+100. Thus, subtracting
; the squared guess (9e+100) from x (9e+100) gives us 0 and the good-enough?
; test passes.
;
; The following improved definition of good-enough? works well for small
; numbers. It's still inaccurate for large numbers such as 9e+100. The infinite
; loop is avoided though.

(define (square-root x)
  (square-root-iter 1.0 x))

(define (square-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (square-root-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (/ (abs (- (improve guess x) guess))
        guess)
     1e-15))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))
