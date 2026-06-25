(set-logic ALL)

(declare-const p Real)
(declare-const x Real)

(define-fun n () Int 1)

(define-fun d () Real 2.0)
(define-fun d2 () Real 4.0)

(define-fun-rec squared-diff-sum-normal ((p Real) (x Real) (size Int)) Real
  (ite (< size 0)
       0.0
       (+ (^ (- p x) 2.0)
          (squared-diff-sum-normal p x (- size 1)))
  )
)

(define-fun distance-1d ((p Real) (x Real) (size Int)) Real
  (^ (squared-diff-sum-normal p x size) 0.5)
)

(define-fun-rec squared-diff-sum-squared ((p Real) (x Real) (size Int)) Real
  (ite (< size 0)
       0.0
       (+ (* (- p x) (- p x))
          (squared-diff-sum-squared p x (- size 1)))
  )
)

(define-fun normal_ok () Bool
  (> (distance-1d p x (- n 1)) d)
)

(define-fun squared_ok () Bool
  (> (squared-diff-sum-squared p x (- n 1)) d2)
)

(assert (not (= normal_ok squared_ok)))

(check-sat)