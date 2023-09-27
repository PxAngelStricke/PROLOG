; Operaciones
(defvar *cuadrado* (lambda (a) (* a a)))
(defvar *cubo* (lambda (a) (* a a a)))
(defvar *baseAltura2* (lambda (a b) (/ (* a b) 2)))

; Datos
(defun areaCuadrado ()
    (princ "Dame la longitud de uno de sus lados: ")
    (setq a (read))
    (format t "El area del cuadrado es: ~A" (funcall *cuadrado* a))
)