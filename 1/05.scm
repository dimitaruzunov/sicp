; SICP exercise 1.5
;
; Ben Bitdiddle has invented a test to determine whether the interpreter
; he is faced with is using applicative-order evaluation or
; normal-order evaluation. He defines the following two procedures:
; (define (p) (p))
;
; (define (test x y)
;   (if (= x 0)
;       0
;       y))
;
; Then he evaluates the expression
; (test 0 (p))
;
; What behavior will Ben observe with an interpreter that uses
; applicative-order evaluation? What behavior will he observe with an
; interpreter that uses normal-order evaluation? Explain your answer.
; (Assume that the evaluation rule for the special form if is the same whether
; the interpreter is using normal or applicative order: The predicate
; expression is evaluated first, and the result determines whether to
; evaluate the consequent or the alternative expression.)

; The procedure p calls itself. Thus, evaluating the expression (p)
; causes a botomless recursion.
; If the interpreter uses applicative-order evaluation, then the evaluation
; of (test 0 (p)) will never finish because both 0 and (p) operands will be
; evaluated before applying the test procedure and evaluating (p) leads to
; endless recursion.
; If the interpreter uses normal-order evaluation, then (test 0 (p))
; will be evaluated to 0 because both 0 and (p) operands won't be evaluated
; before they are needed. More concretely, the predicate expression evaluates
; to #t, thus only the consequent expression 0 is evaluated.
