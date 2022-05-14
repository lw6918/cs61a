(define (map-fn fn lst)
    (if (not (eq? lst nil)) 
        (cons (fn (car lst)) (map-fn fn (cdr lst))) nil)
)

(map-fn (lambda (x) (* x x)) '(1 2 3))