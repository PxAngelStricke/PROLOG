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

; 3. Volumen de un cilindro
(defun volumCilindro ()
    (princ "Dame el radio de la base: ")
    (setq radio (read))
    (princ "Dame la altura del cilindro: ")
    (setq altura (read))
    (setq resultado (* 3.14 (* radio radio) altura))
)

; 4. Volumen de una esfera
(defun volumEsfera ()
    (princ "Dame el radio de la esfera: ")
    (setq radio (read))
    (setq resultado (* (/ 4 3) 3.14 (* radio radio radio)))
)