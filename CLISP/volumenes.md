# Volumenes de figuras

## 1. Volumen de un prisma rectangular

Para realizar el calculo del volumen de un prisma rectangular usaremos el siguiente codigo:

~~~
(defun volumPrisRectan()
    (princ "Dame la longitud del ancho del prisma: ")
    (setq ancho (read))
    (princ "Dame la longitud de la base del prisma: ")
    (setq base (read))
    (princ "Dame la longitud de la altura del prisma: ")
    (setq altura (read))
    (setq resultado (* ancho base altura))
)
~~~

### Formula para obtener el volumen de un prisma rectangular:

![Formula para volumen de un prisma rectangular](https://www.neurochispas.com/wp-content/uploads/2021/04/prisma-rectangular-con-sus-dimensiones.png){width=300px height=200px}

`Fórmula del Volumen = l * b * h`

### Funcionamineto del codigo:

1. Se define una funcion con el nombre ***volumPrisRectan***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la longitud del ancho del prisma.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *ancho* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la longitud de la base del prisma.
5. Con la funcion ***setq*** inicializamos una variable con el nombre *base* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
6. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la longitud de la altura del prisma.
7. Con la funcion ***setq*** inicializamos una variable con el nombre *altura* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
8. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(* ancho base altura)` la cual va a multiplicar la longitud del ancho del prisma por la base de la longitud del prisma y la altura del prisma obteniendo asi el volumen de la figura.
9. El *resultado* se despliega en la consola.
___

## 2. Volumen de un cubo

Para realizar el calculo del volumen de un cubo usaremos el siguiente codigo:

~~~
(defun volumCubo ()
    (princ "Dame la longitud de uno de los lados del cubo: ")
    (setq lado (read))
    (setq resultado (* lado lado lado))
)
~~~

### Formula para obtener el volumen de un cubo:

![Formula para volumen de un cubo](https://www.neurochispas.com/wp-content/uploads/2021/03/cubo-con-sus-lados.png)

`Fórmula del Volumen = a³`

### Funcionamineto del codigo:

1. Se define una funcion con el nombre ***volumCubo***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la longitud de uno de los lados del cubo.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *lado* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(* lado lado lado)` la cual elevara al cubo la longitud de uno de los lados del cubo y asi obtendremos el volumen de la figura.
5. El *resultado* se despliega en la consola.
___

## 3. Volumen de un cilindro

Para realizar el calculo del volumen de un cilindro usaremos el siguiente codigo:

~~~
(defun volumCilindro ()
    (princ "Dame el radio de la base: ")
    (setq radio (read))
    (princ "Dame la altura del cilindro: ")
    (setq altura (read))
    (setq resultado (* 3.14 (* radio radio) altura))
)
~~~

### Formula para obtener el volumen de un cilindro:

![Formula para volumen de un cilindro](https://www.neurochispas.com/wp-content/uploads/2021/03/caracteristicas-de-un-cilindro.png)

`Fórmula del volumen = π * r² * h`

### Funcionamineto del codigo:

1. Se define una funcion con el nombre ***volumCilindro***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la longitud del radio de la base del cilindro.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *radio* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la longitud de la altura del cilindro.
5. Con la funcion ***setq*** inicializamos una variable con el nombre *altura* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
6. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(* 3.14 (* radio radio) altura)` en donde primero se elevara al cuadrado el radio, despues se multiplicara Pi por el radio al cuadrado y por la altura, y asi obtendremos el volumen del cilindro.
7. El *resultado* se despliega en la consola.
___

## 4. Volumen de una esfera

Para realizar el calculo del volumen de una esfera usaremos el siguiente codigo:

~~~
(defun volumEsfera ()
    (princ "Dame el radio de la esfera: ")
    (setq radio (read))
    (setq resultado (* (/ 4 3) 3.14 (* radio radio radio)))
)
~~~

### Formula para obtener el volumen de una esfera:

![Formula para volumen de una esfera](https://www.neurochispas.com/wp-content/uploads/2021/04/diagrama-de-area-superficial-de-esfera-con-radio.png)

`Fórmula del volumen = (4⁄3) * π * r³`

### Funcionamineto del codigo:

1. Se define una funcion con el nombre ***volumEsfera***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la longitud del radio de la esfera.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *radio* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(* (/ 4 3) 3.14 (* radio radio radio))`:
    - Obtenemos el resutlado de la division (4⁄3).
    - Elevamos al cubo el radio multiplicandolo 3 veces por si mismo.
    - Multiplicamos los resultados por Pi.
    - Listo, hemos obtenido el volumen de una esfera.
5. El *resultado* se despliega en la consola.
___

## 5. Volumen de un tetraedro

Para realizar el calculo del volumen de un tetraedro usaremos el siguiente codigo:

~~~
(defun volumTetraedro ()
    (princ "Dame la longitud de uno de los lados del tetraedro: ")
    (setq lado (read))
    (setq resultado (/ (* lado lado lado) (* 6 (sqrt 2))))
)
~~~

### Formula para obtener el volumen de un tetraedro:

![Formula para volumen de un tetraedro](https://www.neurochispas.com/wp-content/uploads/2021/05/dimensiones-de-un-tetraedro.png)

`Fórmula del Volumen = (a³ ⁄ 6 * √2)`

### Funcionamineto del codigo:

1. Se define una funcion con el nombre ***volumTetraedro***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la longitud de uno de los lados del tetraedro.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *lado* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(/ (* lado lado lado) (* 6 (sqrt 2)))`:
    - Primero obtendremos el valor de elevar al cubo el valor del radio.
    - Obtendremos el resultado de obtener la raiz cuadrada de 2.
    - Obtendremos el resultado de multiplicar 6 por el resultado anterior.
    - Dividiremos el resultado de elevar al cubo la radio y de multiplicar el 6 por la raiz cuadrado de 2.
    - Listo ya tenemos el volumen de un tetraedro.
5. El *resultado* se despliega en la consola.
___

## 6. Volumen de un cono circular

Para realizar el calculo del volumen de un cono circular usaremos el siguiente codigo:

~~~
(defun volumConoCirc ()
    (princ "Dame la longitud del radio de la base: ")
    (setq radio (read))
    (princ "Dame la longitud de la altura del cono: ")
    (setq altura (read))
    (setq resultado (* (/ 1 3) 3.14 (* radio radio) altura))
)
~~~

### Formula para obtener el volumen de un cono circular:

![Formula para volumen de un cono circular](https://www.problemasyecuaciones.com/geometria3D/volumen/cono/t0.png)

`Fórmula del Volumen = (1⁄3) * π * r² * h`

### Funcionamineto del codigo:

1. Se define una funcion con el nombre ***volumConoCirc***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la longitud del radio de la base del cono.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *radio* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la longitud de la altura del cono circular.
5. Con la funcion ***setq*** inicializamos una variable con el nombre *altura* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
6. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(* (/ 1 3) 3.14 (* radio radio) altura)`:
    - Primero obtenemos el valor de la division de 1 / 3.
    - Obtenemos el resultado de elevar al cuadrado el radio.
    - Multiplicamos el resultado de la division, de elevar al cuadrado el radio, de la altura y Pi.
    - Listo ya obtuvimos el volumen de un cono cricular.
7. El *resultado* se despliega en la consola.
___

## 7. Volumen de una piramide

Para realizar el calculo del volumen de una piramide usaremos el siguiente codigo:

~~~
(defun volumPiramide ()
    (princ "Dame el ara de la base: ")
    (setq aBase (read))
    (princ "Dame la altura de la piramide: ")
    (setq altura (read))
    (setq resultado (* (/ 1 3) aBase altura))
)
~~~

### Formula para obtener el volumen de una piramide:

![Formula para volumen de una piramide](https://i.ytimg.com/vi/qKsq_Vk9Y6A/maxresdefault.jpg)

`Fórmula del Volumen = (1⁄3) * A.base * h`

### Funcionamineto del codigo:

1. Se define una funcion con el nombre ***volumPiramide***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé el area de la base de la piramide.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *aBase* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la longitud de la altura de la piramide.
5. Con la funcion ***setq*** inicializamos una variable con el nombre *altura* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
6. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(* (/ 1 3) aBase altura)`:
    - Primero obtenemos el resultado de dividir 1 entre 3.
    - Multiplicamos el resultado antes obtenido por la base y la altura.
    - Listo, ya obtuvimos el volumen de una piramide cuadrangular.
7. El *resultado* se despliega en la consola.
___

## 8. Volumen de un cilindro hueco

Para realizar el calculo del volumen de un cilindro hueco usaremos el siguiente codigo:

~~~
(defun volumCilindroHueco ()
    (princ "Dame la altura del cilindro: ")
    (setq altura (read))
    (princ "Dame el radio mayor del cilindro: ")
    (setq rMayor (read))
    (princ "Dame el radio menor del cilindro: ")
    (setq rMenor (read))
    (setq resultado (* 3.14 altura (- (* rMayor rMayor) (* rMenor rMenor))))
)
~~~

### Formula para obtener el volumen de un cilindro hueco:

![Formula para volumen de un cilindro hueco](https://www.areasyvolumenes.net/wp-content/uploads/2022/09/volumen-de-un-cilindro-hueco.png)

`Fórmula del Volumen = π * h * (R² - r²)`

### Funcionamineto del codigo:

1. Se define una funcion con el nombre ***volumCilindroHueco***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la altura del cilindro.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *altura* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la logitud del radio mayor del cilindro.
5. Con la funcion ***setq*** inicializamos una variable con el nombre *rMayor* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
6. Desplegamos un nuevo mensaje con ***princ*** para que el usuario nos dé la logitud del radio menor del cilindro.
7. Con la funcion ***setq*** inicializamos una variable con el nombre *rMenor* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
8. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(* 3.14 altura (- (* rMayor rMayor) (* rMenor rMenor)))`:
    - Primero buscaremos resolver la resta entre el cuadrado de los radios, por lo cual primero elevaremos al cuadrado el radio mayor y el radio menor.
    - Una vez elevados al cuadrado los restaremos, quitandole al cuadrado del radio mayor el resultado del cuadrado del radio menor.
    - Multiplicaremos Pi por la altura y el resultado de la resta de los cuadrados de los radios.
    - Listo, ya obtuvimos el volumen de un cilindro hueco.
9. El *resultado* se despliega en la consola.
___

## 9. Volumen de un octaedro

Para realizar el calculo del volumen de un octaedro usaremos el siguiente codigo:

~~~
(defun volumOctaedro ()
    (princ "Dame la longitud de uno de sus lados: ")
    (setq lados (read))
    (setq resultado (* (/ 1 3) (sqrt 2) (* lados lados lados)))
)
~~~

### Formula para obtener el volumen de un octaedro:

![Formula para volumen de un octaedro](https://i.ytimg.com/vi/nN7Ojg5nppw/maxresdefault.jpg)

`Fórmula del Volumen = (1⁄3) * √2 * a³`

### Funcionamineto del codigo:

1. Se define una funcion con el nombre ***volumOctaedro***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la longitud de uno de sus lados.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *lados* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(* (/ 1 3) (sqrt 2) (* lados lados lados))`:
    - Primero obtendremos el resultado de dividir 1 entre 3.
    - Obtenemos el valor de la raiz cuadrada de 2.
    - Obtenemos el valor de elevar al cubo la longitud de los lados.
    - Multiplicamos los 3 resultados.
    - Listo, ya obtuvimos el volumen de un octaedro.
5. El *resultado* se despliega en la consola.
___

## 10. Volumen de un isocaedro

Para realizar el calculo del volumen de un isocaedro usaremos el siguiente codigo:

~~~
(defun volumIcosaedro ()
    (princ "Dame la longitud de uno de sus lados: ")
    (setq lados (read))
    (setq resultado (* (/ 5 12) (+ 3 (sqrt 5)) (* lados lados lados)))
)
~~~

### Formula para obtener el volumen de un isocaedro:

![Formula para volumen de un isocaedro](https://www.areasyvolumenes.net/wp-content/uploads/2022/08/volumen-de-un-icosaedro.png){width=300px height=200px}

`Fórmula del Volumen = (5⁄12) * (3 + √5) * a³`

### Funcionamineto del codigo:

1. Se define una funcion con el nombre ***volumIcosaedro***.
2. Se despliega un mensaje con ***princ*** para que el usuario nos dé la longitud de uno de sus lados.
3. Con la funcion ***setq*** inicializamos una variable con el nombre *lados* y realizamos una lectura con ***read*** para guardar en la variable lo que el usuario a digitado.
4. Con la funcion ***setq*** inicializamos una variable con el nombre *resultado* y realizamos la operacion `(* (/ 5 12) (+ 3 (sqrt 5)) (* lados lados lados))`:
    - Primero obtendremos el resultado de dividir 5 entre 12.
    - Obtenemos el resultado de sumar 3 más la raiz cuadrada de 5.
    - Obtenemos el resultado de elevar al cubo la longitud de uno de los lados del isocaedro.
    - Multiplicamos todos los resutlados anteriores.
    - Listo, ya obtuvimos el volumen de un isocaedro.
5. El *resultado* se despliega en la consola.