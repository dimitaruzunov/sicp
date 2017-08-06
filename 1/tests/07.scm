(require rackunit rackunit/text-ui)
(load "../07.scm")

(define sicp-1.07-tests
  (test-suite
    "Tests for SICP exercise 1.07"

    (check-= (square-root 4e-8) 2e-4 1e-19)
    (check-= (* (square-root 1e+49) (square-root 1e+49)) 1e+49 1e+34)))

(run-tests sicp-1.07-tests)
