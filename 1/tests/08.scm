(require rackunit rackunit/text-ui)
(load "../08.scm")

(define sicp-1.08-tests
  (test-suite
    "Tests for SICP exercise 1.08"

    (check-= (cube-root 8) 2 1e-19)
    (check-= (cube-root 27) 3 1e-19)
    (check-= (cube-root 1000) 10 1e-14)
    (check-= (cube-root 8e-12) 2e-4 1e-19)
    (check-= (* (cube-root 1e+49)
                (cube-root 1e+49)
                (cube-root 1e+49))
             1e+49
             1e+34)))

(run-tests sicp-1.08-tests)
