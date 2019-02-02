(module exercise racket
    ;; 1.1  
    10
    (+ 5 3 4)
    (- 9 1)
    (/ 6 2)
    (+ (* 2 4) (- 4 6))
    (define a 3)
    (define b (+ a 1))
    (+ a b (* a b))
    (= a b)
    (if (and (> b a) (<  b (* a b)))
        b
        a)
    (cond ((= a 4) 6)
          ((= b 4)(+ 6 7 a))
          (else 25))
    (+ 2 (if (> b a) b a))
    (* (cond ((> a b) a)
             ((< a b) b)
             (else -1))
       (+ a 1)
       )

    ;; 1.2
    (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))
    ;; 1.3 define procedure with three arguments
    ;; and return sum of squared two biggest of them
    (define (sum-of-squares a b) (+ (* a a) (* b b)))
    (define (sum-of-biggest-sqrt a b c) (
                                         cond ((= (min a b c) c) (sum-of-squares a b))
                                              ((= (min a b c) b) (sum-of-squares a c))
                                              ((= (min a b c) a) (sum-of-squares c b))))
    (sum-of-biggest-sqrt 3 7 2)
    ;; 1.4 в данном случае if существует для вычисления оператора + || -
    (define (a-plus-abs-b a b)
      ((if (> b 0) + -) a b))
    ;; 1.5 При нормальном порядке вычислении процедура будет уходить в бесконечную рекурсию так как будет пытатся
    ;; произвести полную подстановку, при апликативном будут вычислены аргументы затем применена процедура.        
    (define (p) (p))
    (define (test x y)
      (if (= x 0)
          0
          y))
    (test 0 (p))
    )
