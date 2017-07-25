; SICP exercise 1.4
;
; Observe that our model of evaluation allows for combinations whose
; operators are compound expressions. Use this observation to describe
; the behavior of the following procedure:
; (define (a-plus-abs-b a b)
;   ((if (> b 0) + -) a b))

; The procedure adds a to the absolute value of b. In order to do that,
; we use the fact that:
; a + |b| = a + b if b > 0 and
; a + |b| = a - b, otherwise.
; We have the expression (<operator> a b).
; The compound expression (if (> b 0) + -) follows the cases above and
; determines which operator should be used. In the first case (when b > 0) it
; evaluates to +, while in the second case it evaluates to -.
