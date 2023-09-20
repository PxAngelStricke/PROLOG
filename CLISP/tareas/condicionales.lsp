; IF


; CASE


; WHEN


; UNLESS


; COND
; Problema 1
(defun pantalones ()
    (princ "¿Cuantos pantalones compró?: ")
    (setq cantidad (read))
    (cond
        ((< cantidad 5) (princ "Se compraron menos de 5 pantalones"))
        ((>= cantidad 5) (princ "Se compraron 5 o mas pantalones"))
        (t (princ "Funcion por defecto"))
    )
)