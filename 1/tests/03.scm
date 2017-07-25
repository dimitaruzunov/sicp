(require rackunit rackunit/text-ui)
(load "../03.scm")

(define sicp-1.03-tests
  (test-suite
    "Tests for SICP exercise 1.03"

    (check-equal? (sum-of-squares-of-two-larger-numbers 1 3 4) 25)
    (check-equal? (sum-of-squares-of-two-larger-numbers 1 4 3) 25)
    (check-equal? (sum-of-squares-of-two-larger-numbers 3 1 4) 25)
    (check-equal? (sum-of-squares-of-two-larger-numbers 3 4 1) 25)
    (check-equal? (sum-of-squares-of-two-larger-numbers 4 1 3) 25)
    (check-equal? (sum-of-squares-of-two-larger-numbers 4 3 1) 25)

    (check-equal? (sum-of-squares-of-two-larger-numbers 3 3 4) 25)
    (check-equal? (sum-of-squares-of-two-larger-numbers 3 4 3) 25)
    (check-equal? (sum-of-squares-of-two-larger-numbers 4 3 3) 25)

    (check-equal? (sum-of-squares-of-two-larger-numbers 4 4 4) 32)))

(run-tests sicp-1.03-tests)
