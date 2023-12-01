# Realizaremos los ejercicios de condicionales

## 1. Una tienda que vende pantalones Dickies al menudeo y al mayoreo tiene las siguientes tarifas, si se compran menos de 5 pantalones estos se cobran a su precio normal, en caso de que se copren 5 o mas pero menos de 12 , se les descuenta el 15% en cada pantalon, si se compran mas de 12 se les descuenta 30% en cada pantalon. Escriba un programa que pida como dato de entrada el numero de pantalones que se desean comprar y con ello imprima el total a pagar por la compra hecha.

En este caso utilizaremos la condicional COND para el primer problema, nuestro codigo quedaria asi:

~~~
(defun calPrecio (numPantalones)
    ; Variables
    (defvar precioNormal 100)
    (defvar descuento15 0.85)
    (defvar descuento30 0.7)
    
    ; Condiciones
    (cond 
        ((< numPantalones 5) (* numPantalones precioNormal))
        ((and (>= numPantalones 5) (< numPantalones 12)) (* numPantalones (- 1 descuento15)))
        ((>= numPantalones 12) (* numPantalones (- 1 descuento30)))
    )

    ; Salida al usuario
    (format t "¿Cuantos pantalones compraste?: ")
    (setq numPantalones (read))
    (setq precioFinal (calPrecio numPantalones))
    (format t "Total a pagar:  ~A" precioFinal)
)
~~~

Primero estamos declarando la funcion ***calPrecio***, seguido de eso estamos declarando nuestras variables y la condicional, para al final hacer el text output que verá el usuario en su terminal.
___


## 2. Escriba un programa para determinar si un solicitante puede lograr un préstamo. Deberá pedir los siguientes datos para cada solicitante: Nombre, historia crediticia(‘b’buena o ‘m’ mala), cantidad pedida, salario anual, y valor de otras propiedades.  El banco solo considerará a los solicitantes con un estado de crédito bueno. De aquellos, solo aceptara los que tengan mas de 6 puntos.  Los puntos se obtienen como sigue: 5 puntos si el salario es 50% del préstamo o más. 3 puntos si el salario es por lo menos 25% pero menos de 50% del préstamo. 1 punto si el salario es por lo menos 10% pero menos de 25% del préstamo. 5 puntos si se tiene otra propiedad del doble del préstamo o mas. 3 puntos si se tiene otra propiedad igual al préstamo pero menor del doble.

**Sin poder solucionar**

## 3. Escriba un programa que pida una letra minúscula, el programa deberá imprimir si la letra es una vocal (a,e,i,o,u), semivocal (y) o una consonante.

En este caso utilizaremos la condicional CASE y nuestro codigo quedaria de la siguiente manera:

~~~
(defun vocalSemi (letra)
    ; Textout para el usuario
    (format t "Ingresa una letra: ")
    (setq letra (read))
    (setq resultado (vocalSemi letra))
    
    ; Condicion
    (case letra
        ((#\a #\e #\i #\o #\u) (format t "La letra ~c es una vocal.~%"))
        (#\y (format t "La letra ~c es una semivocal.~%"))
        (t (format t "La letra ~c es una consonante.~%"))
    )
)
~~~

Para la primer parte estaremos mostrando textos al usuario para que nos otorgue una letra, despues usaremos la condicion CASE para poder determinar si se trata de una vocal, semivocal o consonante.
___

## 4. Para determinar si un año es bisiesto o no debe de cumplir las siguiente regla: Ser divisible entre 4 y no divisible entre 100 o bien divisible entre 400.  Escriba un programa que pida como entrada el año e imprima si el año es bisiesto o no.

En este caso usaremos el condicional IF y nuestro codigo quedaria de la siguiente manera:

~~~
(defvar *modulo* (lambda (num div) (= (mod num div) 0)))

(defun bisiesto ()
    ; Textout
    (format t "Ingrese un año: ")
    (setq año (read))

    ; Condicional IF
    (if 
        (or
            (and (funcall *modulo* año 4) (not (funcall *modulo* año 100)))
            (funcall *modulo* año 400)
        )
        (format t "El año ~a es bisiesto.~%")
        (format t "El año ~a no es bisiesto.~%")
    )
)
~~~

Primero estamos definiendo una operacion lambda para poder realizar un modulo y obtener si es divisible entre los valores pedidos para poder verificar si es bisiesto o no, despues hacemos un ***defun*** para poder pedir que el usuario nos de el año y nosotros poder usar la condicional IF para verificar si es o no bisiesto ayudandonos de la funcion lambda.

___

## 5. Escriba un programa que pida el numero de mes (del 1 al 12 ) e imprima el numero de dias que tiene el mes, donde:
   1. El mes 2 tiene 28 dias
   2. Los meses 4,6,9 y 11 tienen 30 dias
   3. Los meses 1,3,5,7,8,10 y 12 tienen 31 dias
## Si da un mes diferente a los anteriores debera imprimir el mensaje “MES ERRONEO”.