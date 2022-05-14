(define (my-filter func lst) 
        (if (equal? lst nil) 
            nil
            (if (func (car lst))
                (cons (car lst) (my-filter func (cdr lst))) 
                (my-filter func (cdr lst)))))

(define (interleave s1 s2) 
    (if (equal? s1 nil)
        s2
        (if (equal? s2 nil)
            s1
            (cons (car s1) (cons (car s2) (interleave (cdr s1) (cdr s2)))))))

(define (accumulate merger start n term)
    (if (= start 0)
        (if (= n 1) 
            (term n)
            (merger  (term n) (accumulate merger start (- n 1) term)))
        (merger start (accumulate merger 0 n term))))

(define (no-repeats lst) 
    (if (equal? lst nil)
        lst
        (cons (car lst) (no-repeats (my-filter (lambda (x) (not (= x (car lst)))) (cdr lst))))
        ))
