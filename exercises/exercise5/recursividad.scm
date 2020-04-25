(define (factorial n)
    (cond 
        [(and (integer? n) (= n 1)) 1]
        [(and (integer? n) (> n 1)) (* n (factorial (- n 1)))]
    )
)

(equal? (factorial 0) (void))

(define (f-i n r)
    (cond 
        [(= n 1) r]
        [(f-1 (- n 1) (* n r))]
    )
)

(define (factorial n)
    (define (f-i i n r)
        (cond
            [(> i n) r]
            [else (f-i (+ i 1) n ( * i r))]
        )
    )
    (if (and (integer? n ) (> n 0))
        (f-i 1 n 1)
    )
)

(define (fib n)
    (cond
        [(= n 0) 0]
        [(= n 1) 1]
        [else (+ (fib( - n 1)) (fib (- n 2)))]
    )
)

(display 'd)

(equal? (display "Hola mundo") (void))

(define L '(a b c d e))

(car L)
- > HEAD

(cdr L)
- > Complement of car

(define (longitud lista)
    (cond
        [(not (list? lista)) #f]
        [(null? lista) 0]
        [(pair? lista) (+ 1 (longitud (cdr lista)))]
    )
)

(define (longitud2 lista)
    (define (long-i lista n)
        (cond
            [(null? lista) n]
            [(pair? lista) (long-i (cdr lista) (+ n 1))]
        )
    )
    (cond 
        [(not (list? lista)) #f]
        [#t (long-i lista 0)]
    )
)

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

(define (suma-lista lista)
    (cond
        [(not (list? lista)) 'error]
        [(eval (cons '+ lista))]
    )
)
