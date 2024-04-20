import Foundation

// String en una linea
let someString = "Soy un string cualquiera"


// String en varias lineas
let multiLineString = """
Soy Gabriel Gomila
Estamnos haciendo el curso de Swift
Un saludo, paz y amor...
"""
print(multiLineString)


/*
 Caracteres especiales en literales de cadena
 
 Los literales de cadena pueden incluir los siguientes caracteres especiales:
    Los caracteres especiales de escape:
    \0 (carácter nulo),
    \\ (barra invertida),
    \t (tabulador)
    \n (salto de línea)
    \r (retorno de carro)
    \" (comilla doble)
    \' (comilla simple)
 Un valor escalar Unicode arbitrario, escrito como \u{_n_}, donde n es un número hexadecimal, de uno a ocho dígitos (Unicode se discute en Unicode abajo).
 */


//Cadena extendida
let wiseWords = "\"la imaginación es mas importante que el saber\" - Albert Einstein"

//Cadenas de caracteres especiales
let dolarSign = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1f496}"

//WEB  de los codigos UNICODE: https://en.wikipedia.org/wiki/Basic_Latin_(Unicode_block)


//EJERCICIOS
let nacionalidad = "\u{1F1EA}\u{1F1F8}"
let myName = "Kontrol devs"

let loginStringtext = """
Mi nombre es \(myName),
y soy de \(nacionalidad)
y estoy estudiando Swift
"""
print(loginStringtext)


// String vacio
var myEmptyString = ""
var anotherEmpyString = String()

if myEmptyString.isEmpty {
    print("Nada qye ver aquí")
} else{
    print("El String tiene un valor")
}

var newSomeString = "Un caballo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"

let aString = "Juan Gabriel"   //No se puede añadir el String a un let constante.
//aString += " y Ricardo celis"


//Mutavilidad de una cadena
var a = "A"
var b = "B"
print("a vale \(a) y b vale \(b)")
b = a
print("a vale \(a) y b vale \(b)")
b = "C"
print("a vale \(a) y b vale \(b)")
a = "D"
print("a vale \(a) y b vale \(b)")
