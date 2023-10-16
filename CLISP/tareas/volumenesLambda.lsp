; Operaciones
(defvar *mult3num* (lambda (num1 num2 num3) (* num1 num2 num3)))
(defvar *mult2num* (lambda (num1 num2) (* num1 num2)))
(defvar *cuadrado* (lambda (a) (* a a)))
(defvar *cubo* (lambda (a) (* a a a)))

; Datos
; 1. Volumen Prisma Rectangular
(defun volumPrisRectan()
    (princ "Dame la longitud del ancho del prisma: ")
    (setq ancho (read))
    (princ "Dame la longitud de la base del prisma: ")
    (setq base (read))
    (princ "Dame la longitud de la altura del prisma: ")
    (setq altura (read))
    (format t "El volumen del prisma rectangular es: ~A" (funcall *mult3num* ancho base altura))
)

; 2. Volumen de un cubo
(defun volumCubo ()
    (princ "Dame la longitud de uno de los lados del cubo: ")
    (setq lado (read))
    (format t "El volumen de un cubo es: ~A" (funcall *cubo* lado))
)

; 3. Volumen de un cilindro
(defun volumCilindro ()
    (princ "Dame el radio de la base: ")
    (setq radio (read))
    (princ "Dame la altura del cilindro: ")
    (setq altura (read))
    (format t "El volumen del cilindro es: ~A" (funcall *mult3num* (funcall *cuadrado* radio) 3.14 altura))
)