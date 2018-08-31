#lang racket/base
(require rackunit/text-ui)
(require rackunit "./remove-duplicates.rkt")

(define remove-consecutive-duplicates-tests
  (test-suite
   "Tests for remove-duplicates.rkt"

   (test-case
    "Throws error if not provided a parameter"
    (check-exn
     exn:fail?
     (lambda ()
       (remove-consecutive-duplicates))))

   (test-case
    "Throws error if not provided a list"
    (check-exn
     exn:fail?
     (lambda ()
       (remove-consecutive-duplicates 1))))

   (test-case
    "Removes concecutive elements"
      (check-equal? '(1 2 3) (remove-consecutive-duplicates '(1 1 2 2 3 3))))

    (test-case
    "Does not remove all non-concecutive elements"
      (check-equal? '(1 2 3 2 1) (remove-consecutive-duplicates '(1 1 2 2 3 3 2 2 1 1))))
   
   ))

(run-tests remove-consecutive-duplicates-tests)
