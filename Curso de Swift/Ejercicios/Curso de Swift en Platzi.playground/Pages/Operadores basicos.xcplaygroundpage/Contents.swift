import Foundation

/*Hay 3  tipos de operadores:
 OPERADORES UNARIOS: son los que actuan sobre un elemeneto que convierten un 5 en un -5
 OPERADORES BINARIOS: son los que actuan sobre dos elementos, sumar dos numeros, restar dos numeros....
 OPERADORES TERNARIOS: son los que actuan sobre tres elementos*/

let b = 10
var a = 5
a = b

let (x,y) = (1,2)

//let 2 = z

if a == b {
  print("Los valores de a y b son iguales")
}

1+2
5-3
2*3
10.0/2.5

"Hello " + "World"

//Dividendo entre divisor -> Dividendo es igual igual divisor por el cociente mas el resto.   Esto es el Algoritmo de EUCLIDES
//D/d -> D == d*c+r
9/4 //cociente
9%4 //resto

9 == 4*2+1


-9%4 // -9 == -2*4 + (-1)

//OPERADOR UNARIO

let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3 //number = number + 3
number -= 2 //number = number - 2


//EJERCICIOS

var number2 = 5
//Aqui number2 es acumulalivo
number2 += 3 //number2 = number2 + 3 
number2 -= 2 //number2 = number2 -2
number2 *= 2 //number2 = number2 * 2
number2 /= 2 // number2 = number2 / 2

/*
 Operador de asignacion
= igual

Operador aritmeticos
+ Suma(tambien en cadena)
- Resta (y negacion)
* Multiplicacion
/ Division
 
% Resto de division (solo en enteros)

 
 OPERADORES DE ACUMULACION
 += Suma acumulada
 -= Resta acumulada
 *= Multiplicacion acumulada
 /= Division acumulada
 
 */

//OPERADOPRES COMPARATIVOS

1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1


a == b //Igual que
a != b // No igual que
a > b  // mayor que
a < b  // menor que
a >= b //mayor o igual que
a <= b //menor o igual que

//let name = "Juan Gabriel"
let name = "Ricardo Celis"

if name == "Juan gabriel"{
    print("Bienvenido \(name), eres invitado a la fiesta")
}else{
    print("Cuidado, ha aparecido un \(name) salvaje")
}


//Tambien se puede usar en las TUPLAS.

(1, "Juan Gabriel") < (2, "Ricardo Celis")
(3, "Juan Gabriel") < (3, "Ricardo Celis")
(3, "Ricardo celis") < (3, "Juan Gabriel")
(4, "perro") == (4, "perro")  //("perro", false) == ("perro" , true) No se pueden hacer comparaciones con BOLEANOS



//Ejercicios
(44, "Raúl Gallego") < (31, "Juan Gabriel")
(44, "Raúl Gallego") > (31, "Juan Gabriel")
(44, "Raúl Gallego") == (31, "Juan Gabriel")
 
