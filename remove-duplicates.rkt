#lang racket/base

(require racket/provide)

(define (remove-consecutive-duplicates l)
  (unless (list? l)
    (raise-argument-error 'remove-consecutive-duplicates "list?" l)
     "is not a list")
  (cond
   [(= (length l) 0) '()]
   [(= (length (cdr l)) 0) l]
   [else
    (let ([first (car l)])
      (if (equal? first (car (cdr l)))
          (remove-consecutive-duplicates (cdr l))
          (cons first (remove-consecutive-duplicates (cdr l)))))]))


(provide remove-consecutive-duplicates)
