; IF


; CASE


; WHEN


; UNLESS


; COND
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

