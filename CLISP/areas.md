# Areas de figuras

## Area de un cuadrado

La primera figura es un cuadrado para lo cual ocuparemos el siguiente codigo: 

~~~
(defun areaCuadrado()
    (princ "Dame la longitud de uno de sus lados: ")
    (setq num (read))
    (setq resultado (* num num))
)
~~~

1. Se define una funcion con el nombre ***areaCuadrado***
2. Se usa la funcion ***princ*** para desplegar un mensaje
3. Se usa la funcion ***setq*** para crear una variable y asignarle un valor, seguido de eso se usa la funcion ***read*** para realizar una lectura
4. Se usa la funcion ***setq*** nuevamente para realizar una operacion con la variable antes guardada y guardar e imprimir este nuevo valor.
5. En el caso del cubo solo es necesario pedir la longitud de uno de sus lados ya que para encontrar el area de esta figura solo es necesario multiplicar por si mismo la longitud de uno de sus lados.

~~~
(defun areaTriangulo()
    (princ "Dame la longitud de la base: ")
    (setq base (read))
    (princ "Dame la longitud de la altura: ")
    (setq altura (read))
    (setq resultado (/ (* base altura) 2))
)

~~~