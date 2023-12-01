; ----------- IF -----------
; Problema 4
; Operacion
(defvar *modulo* (lambda (num div) (= (mod num div) 0)))

(defun bisiesto ()
    ; Textout
    (format t "Ingrese un año: ")
    (setq año (read))

    ; Condicional IF
    (if 
        (or
            (and (funcall *modulo* año 4) (not (funcall *modulo* año 100)))
            (funcall *modulo* año 400)
        )
        (format t "El año ~a es bisiesto.~%")
        (format t "El año ~a no es bisiesto.~%")
    )
)

; ----------- CASE -----------
; Problema 3
(defun vocalSemi (letra)
    ; Textout para el usuario
    (format t "Ingresa una letra: ")
    (setq letra (read))
    (setq resultado (vocalSemi letra))
    
    ; Condicion
    (case letra
        ((#\a #\e #\i #\o #\u) (format t "La letra ~c es una vocal.~%"))
        (#\y (format t "La letra ~c es una semivocal.~%"))
        (t (format t "La letra ~c es una consonante.~%"))
    )
)

; ----------- WHEN -----------


; ----------- UNLESS -----------


; ----------- COND -----------
; Problema 1
(defun calPrecio (numPantalones)
    ; Variables
    (defvar precioNormal 100)
    (defvar descuento15 0.85)
    (defvar descuento30 0.7)
    
    ; Condiciones
    (cond 
        ((< numPantalones 5) (* numPantalones precioNormal))
        ((and (>= numPantalones 5) (< numPantalones 12)) (* numPantalones (- 1 descuento15)))
        ((>= numPantalones 12) (* numPantalones (- 1 descuento30)))
    )

    ; Salida al usuario
    (format t "¿Cuantos pantalones compraste?: ")
    (setq numPantalones (read))
    (setq precioFinal (calPrecio numPantalones))
    (format t "Total a pagar:  ~A" precioFinal)
)


