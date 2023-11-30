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

; 5. Volumen de un tetraedro
(defun volumTetraedro ()
    (princ "Dame la longitud de uno de los lados del tetraedro: ")
    (setq lado (read))
    (setq resultado (/ (* lado lado lado) (* 6 (sqrt 2))))
)

; 6. Volumen de un cono circular
(defun volumConoCirc ()
    (princ "Dame la longitud del radio de la base: ")
    (setq radio (read))
    (princ "Dame la longitud de la altura del cono: ")
    (setq altura (read))
    (setq resultado (* (/ 1 3) 3.14 (* radio radio) altura))
)

; 7. Volumen de una piramide
(defun volumPiramide ()
    (princ "Dame el ara de la base: ")
    (setq aBase (read))
    (princ "Dame la altura de la piramide: ")
    (setq altura (read))
    (setq resultado (* (/ 1 3) aBase altura))
)

; 8. Volumen de un cilindro hueco
(defun volumCilindroHueco ()
    (princ "Dame la altura del cilindro: ")
    (setq altura (read))
    (princ "Dame el radio mayor del cilindro: ")
    (setq rMayor (read))
    (princ "Dame el radio menor del cilindro: ")
    (setq rMenor (read))
    (setq resultado (* 3.14 altura (- (* rMayor rMayor) (* rMenor rMenor))))
)

; 9. Volumen de un octaedro
(defun volumOctaedro ()
    (princ "Dame la longitud de uno de sus lados: ")
    (setq lados (read))
    (setq resultado (* (/ 1 3) (sqrt 2) (* lados lados lados)))
)

; 10. volumen de un icosaedro
(defun volumIcosaedro ()
    (princ "Dame la longitud de uno de sus lados: ")
    (setq lados (read))
    (setq resultado (* (/ 5 12) (+ 3 (sqrt 5)) (* lados lados lados)))
)