(require rackunit rackunit/text-ui)
(load "../12.scm")

(define sicp-1.12-tests
  (test-suite
    "Tests for SICP exercise 1.12"

    (check-equal? (binomial-coefficient 1 1) 1)
    (check-equal? (binomial-coefficient 2 1) 1)
    (check-equal? (binomial-coefficient 2 2) 1)
    (check-equal? (binomial-coefficient 3 1) 1)
    (check-equal? (binomial-coefficient 3 2) 2)
    (check-equal? (binomial-coefficient 3 3) 1)
    (check-equal? (binomial-coefficient 4 1) 1)
    (check-equal? (binomial-coefficient 4 2) 3)
    (check-equal? (binomial-coefficient 4 3) 3)
    (check-equal? (binomial-coefficient 4 4) 1)
    (check-equal? (binomial-coefficient 5 1) 1)
    (check-equal? (binomial-coefficient 5 2) 4)
    (check-equal? (binomial-coefficient 5 3) 6)
    (check-equal? (binomial-coefficient 5 4) 4)
    (check-equal? (binomial-coefficient 5 5) 1)
    (check-equal? (binomial-coefficient 6 1) 1)
    (check-equal? (binomial-coefficient 6 2) 5)
    (check-equal? (binomial-coefficient 6 3) 10)
    (check-equal? (binomial-coefficient 6 4) 10)
    (check-equal? (binomial-coefficient 6 5) 5)
    (check-equal? (binomial-coefficient 6 6) 1)))

(run-tests sicp-1.12-tests)
