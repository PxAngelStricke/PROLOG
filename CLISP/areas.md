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

1. Se define una funcion con el nombre ***areaCuadrado***.
2. Se usa la funcion ***princ*** para desplegar un mensaje.
3. Se usa la funcion ***setq*** para crear una variable y asignarle un valor, seguido de eso se usa la funcion ***read*** para realizar una lectura.
4. Se usa la funcion ***setq*** nuevamente para realizar una operacion con la variable antes guardada y guardar e imprimir este nuevo valor.
5. En el caso del cubo solo es necesario pedir la longitud de uno de sus lados ya que para encontrar el area de esta figura solo es necesario multiplicar por si mismo la longitud de uno de sus lados.
___

## Area de un triangulo

Para realizar el calculo del area de un traingulo ocuparemos el siguiente codigo:

~~~
(defun areaTriangulo()
    (princ "Dame la longitud de la base: ")
    (setq base (read))
    (princ "Dame la longitud de la altura: ")
    (setq altura (read))
    (setq resultado (/ (* base altura) 2))
)
~~~

1. Se define una funcion con el nombre ***areaTriangulo***.
2. Desplegamos un mensaje con ***princ*** para que el usuario nos dé la longitud de la base del triangulo.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *base* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la longitud de la altura del triangulo.
5. Con la funcion ***setq*** inicializamos una variable con el nombre *altura* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
6. Con la funcion ***setq*** inicializamos una nueva variable con el nombre *resultado* y realizamos la siguiente operacion de manera post-orden para obtener el area del triangulo: `(/ (* base altura) 2))` esto equivale a multiplicar la base por la altura y luego dividir el resultado entre 2.
7. El resultado se despliega en la consola.
___

## Area de un rectangulo

Para realizar el calculo del area de un rectangulo ocuparemos el siguiente codigo:

~~~
(defun areaRectangulo()
    (princ "Dame la longitud de la base: ")
    (setq base (read))
    (princ "Dame la longitud de la altura: ")
    (setq altura (read))
    (setq resultado (* base altura))
)
~~~

1. Se define una funcion con el nombre ***areaRectangulo***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la longitud de la base del rectangulo.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *base* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la longitud de la altura del rectangulo.
5. Con la funcion ***setq*** inicializamos una variable con el nombre *altura* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
6. Con la funcion ***setq*** incializaremos una nueva variable con el nombre *resultado* y realizaremos la operacion `(* base altura)` que no es otra cosa mas que multiplicar la base por la altura del rectangulo y asi obtendremos el area del rectangulo.
7. El resultado se despliega en la consola.
___

## Area de un rombo

Para realizar el calculo del area de un rombo ocuparemos el siguiente codigo:

~~~
(defun areaRombo()
    (princ "Dame la longitud de la diagonal mayor: ")
    (setq dMayor (read))
    (princ "Dame la longitud de la diagonal menor: ")
    (setq dMenor (read))
    (setq resultado (/ (* dMayor dMenor) 2))
)
~~~

1. Se define una funcion con el nombre ***areaRombo***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la longitud de la diagonal mayor del rombo.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *dMayor* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la longitud de la diagonal menor del rombo.
5. Con la funcion ***setq*** inicializamos una variable con el nombre *dMenor* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
6. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(/ (* dMayor dMenor) 2))` la cual se realizara de manera post-orden donde primero multiplicara la diagonal mayor por la diagonal menor y el resultado lo dividira entre 2.
7. El resultado se despliega en la consola.
___

## Area de un trapecio

Para realizar el calculo del area de un trapecio ocuparemos el siguiente codigo:

~~~
(defun areaTrapecio()
    (princ "Dame la longitud de la base mayor: ")
    (setq bMayor (read))
    (princ "Dame la longitud de la base menor: ")
    (setq bMenor (read))
    (princ "Dale la longitud de la altura: ")
    (setq altura (read))
    (setq resultado (/ (* (+ bMayor bMenor) altura) 2))
)
~~~

1. Se define una funcion con el nombre ***areaTrapecio***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la longitud de la base mayor del trapecio.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *bMayor* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la longitud de la base menor del trapecio.
5. Con la funcion ***setq*** inicializamos una variable con el nombre *bMenor* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
6. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la longitud de la altura del trapecio.
7. Con la funcion ***setq*** inicializamos una variable con el nombre *altura* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
8. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(/ (* (+ bMayor bMenor) altura) 2))` que recordemos hara en post-orden, iniciando primero por realizar la suma de las bases, despues multiplicara el resultado por la altura del trapecio y finalmente el resultado lo dividira entre 2.
9. El resultado se despliega en la consola.