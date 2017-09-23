(define (sum-integers a b)
  (if (> a b)
      0
      (+ a
	 (sum-integers (incr a) b))))

(define (sum-squares a b)
  (if (> a b)
      0
      (+ (square a)
	 (sum-squares (incr a) b))))

(define (square num)
  (* num num))

(define (incr num)
  (+ 1 num))

(define (decr num)
  (- num 1))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
	 (sum term (next a) next b))))

(define (sum-int a b)
  (define (identity a) a)
  (sum identity a incr b))

(define (sum-sq a b)
  (sum square a incr b))

(define (pi-sum a b)
  (sum (lambda (i) (/ 1 (* i (+ i 2))))
       a
       (lambda (i) (+ i 4))
       b))

(define (fixed-point f start)
  (define tolerance 0.00001)
  (define (good-enough? u v)
    (< (abs (- u v)) tolerance))
  (define (iter old new)
    (if (good-enough? old new)
	new
	(iter new (f new))))
  (iter start (f start)))

(define (square-root x)
  (fixed-point
   (average-damp (lambda (y) (/ x y)))
   1))

(define (average-damp f)
  (define (average x y)
    (/ (+ x y) 2)
  (lambda (x) (average (f x) x))))

