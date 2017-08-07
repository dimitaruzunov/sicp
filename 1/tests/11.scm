(require rackunit rackunit/text-ui)
(load "../11.scm")

(define sicp-1.11-tests
  (test-suite
    "Tests for SICP exercise 1.11"

    (check-equal? (f-rec 0) 0)
    (check-equal? (f-rec 1) 1)
    (check-equal? (f-rec 2) 2)
    (check-equal? (f-rec 3) 4)
    (check-equal? (f-rec 4) 11)
    (check-equal? (f-rec 5) 25)
    (check-equal? (f-rec 6) 59)
    (check-equal? (f-rec 7) 142)

    (check-equal? (f-iter 0) 0)
    (check-equal? (f-iter 1) 1)
    (check-equal? (f-iter 2) 2)
    (check-equal? (f-iter 3) 4)
    (check-equal? (f-iter 4) 11)
    (check-equal? (f-iter 5) 25)
    (check-equal? (f-iter 6) 59)
    (check-equal? (f-iter 7) 142)))

(run-tests sicp-1.11-tests)
