(define (square x)
  (* x x))

(define (sum-squares x y)
  (+ (square x) (square y)))

(define (average x y)
  (/ (+ x y) 2))

(define (abs x)
  (cond ((< x 0) (- x))
	((= x 0) 0)
	((> x 0) x)))

(define (square-root x)
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) x))
       0.000001))
  (define (try guess)
    (if (good-enough? guess)
	guess
	(try (improve guess))))
  (try 1))
