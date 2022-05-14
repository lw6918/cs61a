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
          (else (ordered? (cdr s))))
)

(define (square x) (* x x))

(define (pow base exp) 
    (cond ((= exp 0) 1)
          ((= exp 1) base)
          ((= exp 2) (square base))
          ((even? exp) (square (pow base (quotient exp 2))))
          ((odd? exp) (* base (square (pow base (quotient exp 2))))))
)
