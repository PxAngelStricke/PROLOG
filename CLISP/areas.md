~~~

(defun areaCuadrado()
    (princ "Dame la longitud de uno de sus lados: ")
    (setq num (read))
    (setq resultado (* num num))
)

(defun areaTriangulo()
    (princ "Dame la longitud de la base: ")
    (setq base (read))
    (princ "Dame la longitud de la altura: ")
    (setq altura (read))
    (setq resultado (/ (* base altura) 2))
)

~~~