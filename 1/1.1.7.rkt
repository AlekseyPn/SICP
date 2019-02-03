(module sicp racket
    ;; 1.7 Улучшенный алгоритм для good-enough?
    (define (good-enough? guess prev-guess)
        (< (abs (/ (- guess prev-guess) prev-guess)) 0.001))
)