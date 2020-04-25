(define (biciesto x)
    (define (divisible? a b)
        (cond
            [(= (mod a b) 0) #t]
            [#t #f]
        )
    )
    (cond
        [(or (not (integer? x)) (< x 0)) 'error]
        [(and (divisible? x 4) (not (divisible? x 100))) #t]
        [(divisible? x 400) #t]
    )
)

(define (mudulo a b)
    (
        cond
        [(not number? a) (display "error-a-no-es-un-número")]
        [(not number? b) (display "error-b-no-es-un-número")]
        [(= b 0) (display "error-b-es-cero")]
        [(= (% a b) 0) (display "a-es-múltiplo-de-b")]
        [(= a b) (display "a-y-b-son-iguales")]
    )
)


(define (max_num list)
     (if (null? (cdr list))
         (car list)
         (if (< (car list) (max_num (cdr list)))
             (max_num (cdr list))
             (car list)
         )
    )
)

(define (min_num list)
     (if (null? (cdr list))
         (car list)
         (if (> (car list) (min_num (cdr list)))
             (min_num (cdr list))
             (car list)
         )
    )
)


(define (valor-lista n lista c)
    (
        cond
        [(not number? n) #f]
        [(= n 0) #f]
        [(not pair? lista) #f]
        [(> n (longitud lista)) #f]

    )
)


(define list (lambda(a b c)
        (cons a (cons b (cons c '())))
    )
)

(define (longitud lista)
    (cond
        [(not (list? lista)) #f]
        [(null? lista) 0]
        [(pair? lista) (+ 1 (longitud (cdr lista)))]
    )
)

(define (operacion l1 l2 l3)
    (cond
        [(or (not pair? l1) (not pair? l2) (not pair? l3)) #f]
        [(not (= (longitud l1) (longitud l2) (longitud l3))) #f]
        [
            (if (= 0 (longitud l1))
                '()
                (
                    (cons(
                        (eval (car l3) (car l1) (car l2))
                        (operacion (cdr l1) (cdr l2) (cdr l2))
                        )
                    )
                )

            ) #f
        ]
    )
)

(define (reverse lista)
    (cond
        [(not pair? lista)#f]
        [(null? lista) '()]
        [(= 1 (longitud lista)) lista]
        []
    )
)

(define (valida-fecha dia mes)
    (cond
        [(and (or (not integer? dia) (not integer? mes)) (not (> dia 0)) (not (> mes 0)) )]

    )
)

(define (borra-elemento lista e)
    (if list? lista)
        (if (pair? lista)
    )#f
)

(define (borra-elemento lista e)
    (if (list? lista)
        (if (pair? lista)
            (if (= (car lista) e)
                (cons '$ (borra-elemento (cdr lista) e))
                (cons (car lista) (borra-elemento (cdr lista) e)))
        '()
        )
        #f
    )
)
