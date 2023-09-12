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

![Formula para volumen de un prisma rectangular](https://www.neurochispas.com/wp-content/uploads/2021/04/prisma-rectangular-con-sus-dimensiones.png)
`Fórmula del Volumen = lbh`

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