(define (abs x)
    (cond
        [(> x 0) x]
        [(= x 0) 0]
        [(- x)]
    )
)
(cons 4 (cons 1 '()))

(cdr '(2 3 4 4))

(car '(2 3 4 4))

(number? -45.67) => #t

(symbol? 'num) => #t

(define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))
    )
)

(define (fact-iter prod counter max-count)
    (if(> counter max-count)
        prod
        (fact-iter 
            (* counter prod)
            (+ counter 1)
            (max-count)
        )
    )
)

(define (factorial n)
    (fact-iter 1 1 n)
)

# (cubo-VAP x). Suma del volumen, area y perímetro. donde x es el lado
(define (cubo-vap x)
    ( +
        (* x x x)
        (* 6 x x)
        (* 12 x )
    )
)

# (crea-Lista).
# Crear la lista ((5 (1 6) 2) 3 4)
# utilizando anidaciones de (cons) y asignarla a la variable lista.
(define lista
    (cons 
        (cons 5 
            (cons (cons 1 (cons 6 '()) ) (cons 2 '())
            )
        )
        (cons 3 (cons 4 '())
        )
    )
)

# Numero de elementos en una lista 
# (1 2 3) => 3 
# (()) => 0
# ((1 (s))) => 2

(define (len-lista lista)
    (cond
        [(and 
            (not (null? lista))
            (cond 
                [(list? (car lista)) (+ (len-lista (car lista)) (len-lista (cdr lista)))]
                [#t (+ 1 (len-lista (cdr lista)))]
            )
        )]
        [#t 0]
    )
)


# (modulo a b). 
# Valida que la entrada sea numérica.
# Si un valor no es numérico
#    imprime "error-a-no-es-un-número" o
#            "error-b-no-es-un-número".
#
# Valida que b no sea cero.
#   Si b es cero, imprime "error-b-es-cero".
#
# Si el módulo es cero, imprime "a-es-múltiplo-de-b".
# Si a es igual que b, imprime "a-y-b-son-iguales".

(define (modulo a b)
    (cond
        [(not (number? a)) (display "Error, a no es numero")]
        [(not (number? b)) (display "Error, b no es numero")]
        [(= b 0) (display "Error, b es 0")]
        [(= a b) (display "a y b son iguales")]
        [(= 0 (mod a b)) (display "a es multiplo de b")]
        [#t (mod a b)]
    )
)

# (diferencia a b c).
# Regresa la mayor diferencia de todos los pares
# ((a b) (b a) (a c) (c a) (b c) (c b)).
# Si dos o más diferencias cumplen la regla,
# debe regresar "varias". 
#
# Debe usar (cond) no (if).
# No se permite asignación de valores.
#
# (diferencia 1 1 1)
# varias
#
# (diferencia 1 2 3)
# 3-1 -> 2

(define (max_num lista) 
    (cond
        [(null? (cdr lista)) (car lista)]
        [(< (car lista) (max_num (cdr lista))) (max_num (cdr lista))]
        [#t (car lista)]
    )
)

(define (min_num lista) 
    (cond
        [(null? (cdr lista)) (car lista)]
        [(> (car lista) (min_num (cdr lista))) (min_num (cdr lista))]
        [#t (car lista)]
    )
)

(define (diferencia a b c)
    (- 
    (max_num (cons a(cons b(cons c '())) ))
    (min_num (cons a(cons b(cons c '())) ))
    )
)

# (valor-lista n lista).
# Obtener el valor n de la variable lista.
# Validar parámetros. En error #f.
#
# n != integer => #f
# n = 0  => #f
# lista != pair?  => #f
# n > len(lista) => #f

(define (len-lista lista)
    (cond
        [(and 
            (not (null? lista))
            (+ 1 (len-lista (cdr lista)))
        )]
        [#t 0]
    )
)

(define (valor-lista lista n)
    (cond
        [(or
            (not integer?)
            (= n 0)
            (not (pair? lista))
            (> n (len-lista lista))
         )#f]
        [(if (= n 1) 
            (car lista)
            (valor-lista (cdr lista) (- n 1))
        )]
    )
)

# (icosaedro-AP x o).
# x -> Es un lado
# o = a -> área.
# o = p -> perímetro.
# o = ap -> suma del área y perímetro.
(define (perimetro x)
    (* 30 x)
)
(define (area x)
    (* x x 5 (sqrt 3))
)

(define (icosaedro x o)
    (cond
        [(or (not (number? x)) (not (> x 0))) 'error]
        [(equal? o 'p) (perimetro x)]
        [(equal? o 'a) (area x)]
        [(equal? o 'ap) (+ (perimetro x) (area x))]
        [#t 'error]
    )
)


# (operacion L1 L2 L3).
# Validar que L1, L2 y L3 sean listas, si no lo son, regresa #f.
#
# L1 y L2 contienen números.
# L3, contiene operadores.
# La función regresa una lista, con el resultado de la operación (L3 L1 L2).
(define (len-lista lista)
    (cond
        [(and 
            (not (null? lista))
            (+ 1 (len-lista (cdr lista)))
        )]
        [#t 0]
    )
)

(define (operacion L1 L2 L3)
    (cond
        [(or 
            (or
                (not (list? L1))
                (not (list? L2))
                (not (list? L3))
            )
            (not (=
                (len-lista L1)
                (len-lista L2)
                (len-lista L3)                
            ))
        ) #f]
        [(= 0 (len-lista L1)) '()]
        [(cons
            ((eval (car L3)) (car L1) (car L2))
            (operacion (cdr L1) (cdr L2) (cdr L3))
        )]
    )
)

# Reversa de una lista
(define (reverse-aux lista r)
    (cond
        [(null? lista) r]
        [(reverse-aux (cdr lista) (cons (car lista) r ))]
    )
)

(define (reverse lista)
    (cond
        [(not (list? lista)) (display "No es una lista")]
        [(reverse-aux lista '())]
    )
)


# (valida-fecha d m)
(define (valida-fecha dia mes)
    (cond
        [(not
            (and
                (integer? dia)
                (integer? mes)
                (< 0 dia)
                (< 0 mes)
                (> 32 dia)
                (> 13 mes)

            )
        ) #f]
        [(and (= 2 mes) (> 28 dia)) #f]
        [#t #t]
    )
)


# (borra-elemento L E)
(define (borra-elemento lista e)
    (if (list? lista)
        (if (pair? lista)
            (if (= e (car lista))
                (cons '$ (borra-elemento (cdr lista) e))
                (cons (car lista) (borra-elemento lista e))
            )
        '())
    #f)
)

# (match L1 L2)
# Devuelve lista de matches entre los tipos de elementos de las listas
# (número, símbolo, booleano)
# si no hace match, devuelve falso

# Evaluar tamaño de las dos listas
# Iterar sobre las dos listas donde
# Cada cabeza de los elementos sera
# evaluada por tipos
(define (len-lista lista)
    (cond
        [(null? lista) 0]
        [(pair? lista) (+ 1 (len-lista (cdr lista)))]
    )
)

(define (match lista1 lista2)
    (cond
        [(or (not (list? lista1)) (not (list? lista1))) (display "No son listas")]
        [(not (= (len-lista lista1) (len-lista lista1))) (display "Listas son de diferente tamano")]
        [(= 0 (len-lista lista1)) '()]
        [(and (number? (car lista1)) (number? (car lista2))) (cons 'n (match (cdr lista1) (cdr lista2)))]
        [(and (boolean? (car lista1)) (boolean? (car lista2))) (cons 'b (match (cdr lista1) (cdr lista2)))]
        [(and (symbol? (car lista1)) (symbol? (car lista2))) (cons 's (match (cdr lista1) (cdr lista2)))]
        [else (cons #f (match (cdr lista1) (cdr lista2)))]
    )
)