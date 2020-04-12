Chez Scheme Version 9.5.3
Copyright 1984-2019 Cisco Systems, Inc.

> (cons 1 '())
(1)
> (define lst (cons 1 '()))
> lst
(1)
> (define lst (cons 2 lst))
> lst
(2 1)
> (cons (cons 2 (cons 1 '())) (cons 2 (cons 1 '()
                                        ) ))
((2 1) 2 1)
> lst
(2 1)
> (car lst)
2
> lst
(2 1)
> (define new_list (cons (cons 2 (cons 1 '())) (cons 2 (
cons 1 '())))))))
> new_list
((2 1) 2 1)
> (car new_list)
(2 1)
> (cdr new_list)
(2 1)
> (number? -34)
#t
> (number? '-34)
#t
> (number? '-34reww)
#f
> (symbol? '-34reww)
#t
> (boolean? #t)
#t
> (boolean? '#t)
#t
> (boolean? '¢)
#f
> (pair? '())
#f
> (pair? '(a (a f) g))
#t
> (pair? '(cons 3 4))
#t
> (cons 3 4)
(3 . 4)
> (define (abs x)
  (cond ((> x 0) x)
  ((= x 0) 0)
  ((< x 0) (- x))))
> (abs -3)
3
> (abs 3)
3
> (abs 0)
0
> (define (abs x)
  (cond ((< x 0) (- x))
  (else x)))
> (abs 0)
0
> (abs 3)
3
> (abs -3)
3
> (define (>= x y)
  (not (< x y)))
> (>= 3 5)
#f
> (>= 30 5)
#t
> (>= 50 50)
#t
> (define (factorial n)
  (if (= n 1)
  1
  (* n (factorial (- n 1)))))
> (factorial 23)
25852016738884976640000
> (factorial 2)
2
> (factorial 2000983)
> (define (fib n)
  (cond ((= n 0) 0)
  ((= n 1) 1)
  (else (+ (fib (- n 1))
  (fib (- n 2))))))
> (define (fib n)
  (fib-iter 1 0 n))
> (define (fib-iter a b count)
  (if (= count 0)
  b
  (fib-iter (+ a b) a (- count 1))))
> (define (power_to b n)
  (if (= n 0)
  1
  (* b (power_to b (- n 1)))))
> (power_to 2 3)
8
> (define (power_to b n)
  (exp-iter b n 1))
> (define (exp-iter b counter product)
  (if (= counter 0)
  product
  (exp-iter b
  (- counter 1)
  (* b product))))
> (power_to 2 3)
8
> (define (expmod base exp m)
  (cond ((= exp 0) 1)
  ((even? exp)
  (remainder (square (expmod base (/ exp 2) m))
  m))
  (else
  (remainder (* base (expmod base (- exp 1) m))
  m))))
> (define (square x) (* x x))
> (expmod 2 3 5)
3
