# remove-duplicates
Removes concecutive duplicates from a list in Racket/Scheme

Example
--

```racket
#lang racket
(require "remove-duplicates.rkt")

(remove-consecutive-duplicates '(1 2 1 1 3 3) ) ; '(1 2 1 3)
(remove-consecutive-duplicates 1 ) ; will raise contract violation

```

License
---
MIT License © 2018 Theo Despoudis