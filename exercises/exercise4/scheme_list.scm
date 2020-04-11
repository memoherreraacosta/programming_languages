(define lista 10)

(quote lista)

#t

#f

'lista

(cons '(1) 2)

(define lista (cons 4 lista))

(cons 1 (cons 2 (cons (cons 'a (cons 'b '() ) ) (cons (cons #t (cons '() '())) '()))))

(car )

(cdr )

# Goal (1 a (#t) ())
(define lista3 (cons 1 (cons 'a (cons ( cons #t '()) (cons '() '())))))

(car (car (cdr (cdr lista3))))

(define lista4 '(a, (b (c (d (e))))))

(car (cdr (car (cdr (car (cdr (car (cdr(lista4)))))))))


(define (funA L1 L2)
    (if (and (pair? L1) (pair? L2))
        (if 
            (or
                ()
                ()
                ()
                ()
            )
        )
        'error
    )
)

( define (mayor L)
   (cond 
        [(not (pair? L)) 'error]
        []
        [#t 'error]
   )
)

