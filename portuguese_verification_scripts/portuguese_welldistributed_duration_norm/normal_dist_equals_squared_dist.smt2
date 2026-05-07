(set-logic ALL)

; =================================================
; Dataset encoding
; =================================================


(define-fun m () Int 100)
(define-fun n () Int 1)

(declare-const D (Array Int (Array Int Real)))

(define-fun row1 ((x0 Real)) (Array Int Real)
  (store ((as const (Array Int Real)) 0.0) 0 x0)
)

(assert (= (select D 0) (row1 -0.744953)))
(assert (= (select D 1) (row1 -0.853274)))
(assert (= (select D 2) (row1 -0.927129)))
(assert (= (select D 3) (row1 -0.911374)))
(assert (= (select D 4) (row1 -0.806992)))
(assert (= (select D 5) (row1 -0.865091)))
(assert (= (select D 6) (row1 -0.788282)))
(assert (= (select D 7) (row1 -0.627770)))
(assert (= (select D 8) (row1 -0.952733)))
(assert (= (select D 9) (row1 -0.947809)))
(assert (= (select D 10) (row1 -0.783358)))
(assert (= (select D 11) (row1 -0.867061)))
(assert (= (select D 12) (row1 -0.492861)))
(assert (= (select D 13) (row1 -0.932053)))
(assert (= (select D 14) (row1 -0.830625)))
(assert (= (select D 15) (row1 -0.654357)))
(assert (= (select D 16) (row1 -0.905465)))
(assert (= (select D 17) (row1 -0.964549)))
(assert (= (select D 18) (row1 -0.786312)))
(assert (= (select D 19) (row1 -0.948794)))
(assert (= (select D 20) (row1 -0.743968)))
(assert (= (select D 21) (row1 -0.840473)))
(assert (= (select D 22) (row1 -0.844412)))
(assert (= (select D 23) (row1 -0.665190)))
(assert (= (select D 24) (row1 -0.823732)))
(assert (= (select D 25) (row1 -0.832595)))
(assert (= (select D 26) (row1 -0.710487)))
(assert (= (select D 27) (row1 -0.876908)))
(assert (= (select D 28) (row1 -0.750862)))
(assert (= (select D 29) (row1 -0.659281)))
(assert (= (select D 30) (row1 -0.780404)))
(assert (= (select D 31) (row1 -0.775480)))
(assert (= (select D 32) (row1 -0.797144)))
(assert (= (select D 33) (row1 -0.779419)))
(assert (= (select D 34) (row1 -0.671098)))
(assert (= (select D 35) (row1 -0.763663)))
(assert (= (select D 36) (row1 -0.642541)))
(assert (= (select D 37) (row1 0.638602)))
(assert (= (select D 38) (row1 -0.433776)))
(assert (= (select D 39) (row1 -0.867061)))
(assert (= (select D 40) (row1 -0.844412)))
(assert (= (select D 41) (row1 -0.824717)))
(assert (= (select D 42) (row1 -0.980305)))
(assert (= (select D 43) (row1 0.467258)))
(assert (= (select D 44) (row1 -0.395372)))
(assert (= (select D 45) (row1 -0.763663)))
(assert (= (select D 46) (row1 -0.652388)))
(assert (= (select D 47) (row1 -0.780404)))
(assert (= (select D 48) (row1 -0.844412)))
(assert (= (select D 49) (row1 -0.644510)))
(assert (= (select D 50) (row1 -0.740030)))
(assert (= (select D 51) (row1 -0.752831)))
(assert (= (select D 52) (row1 -0.825702)))
(assert (= (select D 53) (row1 -0.226982)))
(assert (= (select D 54) (row1 -0.859183)))
(assert (= (select D 55) (row1 -0.830625)))
(assert (= (select D 56) (row1 -0.899557)))
(assert (= (select D 57) (row1 -0.989168)))
(assert (= (select D 58) (row1 -0.819793)))
(assert (= (select D 59) (row1 0.748892)))
(assert (= (select D 60) (row1 -0.866076)))
(assert (= (select D 61) (row1 -0.202363)))
(assert (= (select D 62) (row1 -0.840473)))
(assert (= (select D 63) (row1 -0.616937)))
(assert (= (select D 64) (row1 -0.650419)))
(assert (= (select D 65) (row1 -0.912358)))
(assert (= (select D 66) (row1 -0.482029)))
(assert (= (select D 67) (row1 -0.733136)))
(assert (= (select D 68) (row1 -0.846381)))
(assert (= (select D 69) (row1 -0.827671)))
(assert (= (select D 70) (row1 -0.747907)))
(assert (= (select D 71) (row1 -0.832595)))
(assert (= (select D 72) (row1 -0.850320)))
(assert (= (select D 73) (row1 -0.715411)))
(assert (= (select D 74) (row1 -0.823732)))
(assert (= (select D 75) (row1 -0.828656)))
(assert (= (select D 76) (row1 -0.794190)))
(assert (= (select D 77) (row1 -0.658296)))
(assert (= (select D 78) (row1 -0.734121)))
(assert (= (select D 79) (row1 -0.797144)))
(assert (= (select D 80) (row1 -0.811915)))
(assert (= (select D 81) (row1 -0.793205)))
(assert (= (select D 82) (row1 -0.982275)))
(assert (= (select D 83) (row1 0.024126)))
(assert (= (select D 84) (row1 -0.759724)))
(assert (= (select D 85) (row1 -0.481044)))
(assert (= (select D 86) (row1 0.442639)))
(assert (= (select D 87) (row1 0.365830)))
(assert (= (select D 88) (row1 -0.816839)))
(assert (= (select D 89) (row1 -0.824717)))
(assert (= (select D 90) (row1 -0.954702)))
(assert (= (select D 91) (row1 -0.792221)))
(assert (= (select D 92) (row1 -0.427868)))
(assert (= (select D 93) (row1 -0.784343)))
(assert (= (select D 94) (row1 -0.831610)))
(assert (= (select D 95) (row1 -0.582472)))
(assert (= (select D 96) (row1 -0.719350)))
(assert (= (select D 97) (row1 -0.902511)))
(assert (= (select D 98) (row1 -0.802068)))
(assert (= (select D 99) (row1 -0.807976)))



(define-fun d () Real 2.0)

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

(define-fun normal_ok () Bool
  (not
    (exists ((p Real))
      (and
        (>= p -1.0)
        (<= p  1.0)
        (forall ((i Int))
          (=>
            (and (>= i 0) (< i m))
            (> (distance-1d p (select (select D i) 0) (- n 1)) d)
          )
        )
      )
    )
  )
)

; =================================================
; Squared distance formulation
; =================================================

(define-fun d2 () Real 4.0)

(define-fun-rec squared-diff-sum-squared ((p Real) (x Real) (size Int)) Real
  (ite (< size 0)
       0.0
       (+ (* (- p x) (- p x))
          (squared-diff-sum-squared p x (- size 1)))
  )
)

(define-fun squared_ok () Bool
  (not
    (exists ((p Real))
      (and
        (>= p -1.0)
        (<= p  1.0)
        (forall ((i Int))
          (=>
            (and (>= i 0) (< i m))
            (> (squared-diff-sum-squared p (select (select D i) 0) (- n 1)) d2)
          )
        )
      )
    )
  )
)

; =================================================
; Equivalence check
; SAT   -> formulations differ
; UNSAT -> formulations are equivalent
; =================================================

(assert (not (= normal_ok squared_ok)))
(check-sat)