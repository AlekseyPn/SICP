(module sicp racket
    ;; 1.7 Улучшенный алгоритм для good-enough?
    (define (sqrt x)
        (define (good-enough? guess prev-guess)
            (< (abs (/ (- guess prev-guess) prev-guess)) 0.001))

        (define (average x y)
            (/ (+ x y) 2))

        (define (improve guess)
            (average guess (/ x guess)))

        (define (sqrt-iter guess prev-guess)
            (if (good-enough? guess prev-guess)
                guess
                (sqrt-iter (improve guess)
                        guess)))
    
        (sqrt-iter 1.0 0.5))
    (sqrt 10)
)