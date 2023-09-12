; 1. Volumen Prisma Rectangular
(defun volumPrisRectan()
    (princ "Dame la longitud del ancho del prisma: ")
    (setq ancho (read))
    (princ "Dame la longitud de la base del prisma: ")
    (setq base (read))
    (princ "Dame la longitud de la altura del prisma: ")
    (setq altura (read))
    (setq resultado (* ancho base altura))
)

; 2. Volumen de un cubo
(defun volumCubo ()
    (princ "Dame la longitud de uno de los lados del cubo: ")
    (setq lado (read))
    (setq resultado (* lado lado lado))
)