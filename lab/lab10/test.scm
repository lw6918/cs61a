(define (cddr s) (cdr (cdr s)))

(define (cadr s) 
    (car (cdr s))
)

(define (caddr s) 
    (car (cddr s))
)

(define (ordered? s) 
    (cond ((null? (cdr s)) #t)
          ((< (cadr s) (car s)) #f)
          (ordered? (cdr s)))
)
(ordered? '(1 2 3 4 5))