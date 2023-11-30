# Areas de figuras

## 1. Definicion de funciones lambda

Para calcular el volumen utilizaremos las funciones lambda las cuales nos permiten ejecutar operaciones de manera mas sencilla para lo cual utilizaremos las siguientes operaciones:

~~~
; Operaciones
(defvar *mult3num* (lambda (num1 num2 num3) (* num1 num2 num3)))
(defvar *mult2num* (lambda (num1 num2) (* num1 num2)))
(defvar *cuadrado* (lambda (a) (* a a)))
(defvar *cubo* (lambda (a) (* a a a)))
(defvar *division* (lambda (num1 num2) (/ num1 num2)))
(defvar *resta2num* (lambda (num1 num2) (- num1 num2)))
(defvar *suma2num* (lambda (num1 num2) (+ num1 num2)))
~~~

## 2. Volveremos a utilizar la logica de operaciones de la tarea anterior de volumenes.lsp (las formulas y explicacion se encuentran en volumenes.md) re-utilziando formulas

~~~
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

; 4. Volumen de una esfera
(defun volumEsfera ()
    (princ "Dame el radio de la esfera: ")
    (setq radio (read))
    (format t "El volumen de la esfera es: ~A" (funcall *mult3num* (/ 4 3) 3.14 (funcall *cubo* radio)))
)

; 5. Volumen de un tetraedro
(defun volumTetraedro ()
    (princ "Dame la longitud de uno de los lados del tetraedro: ")
    (setq lado (read))
    (format t "El volumen del tetraedro es: ~A" (funcall *mult2num* (funcall *division* (sqrt 2) 12) (funcall *cubo* lado)))
)

; 6. Volumen de un cono circular
(defun volumConoCirc ()
    (princ "Dame la longitud del radio de la base: ")
    (setq radio (read))
    (princ "Dame la longitud de la altura del cono: ")
    (setq altura (read))
    (format t "El volumen del cono circular es: ~A" (funcall *division* (funcall *mult3num* 3.14 altura (funcall *cuadrado* radio)) 3))
)

; 7. Volumen de una piramide
(defun volumPiramide ()
    (princ "Dame el ara de la base: ")
    (setq aBase (read))
    (princ "Dame la altura de la piramide: ")
    (setq altura (read))
    (format t "El volumen de la piramide es: ~A" (funcall *division* (funcall *mult2num* aBase altura) 3))
)

; 8. Volumen de un cilindro hueco
(defun volumCilindroHueco ()
    (princ "Dame la altura del cilindro: ")
    (setq altura (read))
    (princ "Dame el radio mayor del cilindro: ")
    (setq rMayor (read))
    (princ "Dame el radio menor del cilindro: ")
    (setq rMenor (read))
    (format t "El volumen del cilindro hueco es: ~A" (funcall *mult3num* 3.14 altura (funcall *resta2num* (funcall *cubo* rMayor) (funcall *cubo* rMenor))))
)

; 9. Volumen de un octaedro
(defun volumOctaedro ()
    (princ "Dame la longitud de uno de sus lados: ")
    (setq lados (read))
    (format t "El volumen del octaedro es: ~A" (funcall *division* (funcall *mult2num* (funcall *cubo* lados) (sqrt 2)) 3))
)

; 10. volumen de un icosaedro
(defun volumIcosaedro ()
    (princ "Dame la longitud de uno de sus lados: ")
    (setq lados (read))
    (format t "El volumen del icosaedro es: ~A" (funcall *mult3num* (funcall *division* 5 12) (funcall *suma2num* 3 (sqrt 5)) (funcall *cubo* lados)))
)
~~~