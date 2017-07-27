Week 2 (2017-07-25 – 2017-08-01)
================================

We discussed some of the exercises, most notably (in order of discussion):
* 1.13 which requires a mathematical proof.
* 1.10 which requires solving some recurrence equations in order to simplify
the calculation of the Ackermann function for the given values. In other words,
doing the second part of the exercise first is easier.
* 1.5 and 1.6 which raised the issue of applicative-order vs. normal-order
evaluation and, consequently, lazy evaluation. We discussed a possible
implementation of the if procedure using lambdas which return the actual
consequent and alternative values:
```scheme
(define (if predicate consequent alternative)
  (cond (predicate (consequent))
        (else (alternative))))

(define (p) (p))
(if #t (lambda () 42) (lambda () (p))) ; this expression evaluates to 42
```
* 1.3 was briefly mentioned as an exercise with many possible heuristics.

We also skimmed through the book contents and talked about the next chapters.
Georgi is doing the exercises in his own programming language which I found
impressive.
Since nobody finished all the exercises from Chapter 1, we moved this milestone
for the next week.
