import Foundation

let greeting = "Hola, que tal?"
greeting[greeting.startIndex]  //Esta linea optenemos la primera linea de constante.
greeting[greeting.index(before: greeting.endIndex)]  //Esta estamos accediendo a la posicion anterior a la final.
greeting[greeting.index(after: greeting.startIndex)]  //En esta funcion accedemos a la posicion 1 de la cadena.

for idx in greeting.indices{
    print("\(greeting[idx]) - \(idx)", terminator: "")
}


//SUBSTRING
greeting
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex //En esta funcion con .firstIndex le decimos en que posicion esta la como(,).
let firstPart = greeting[..<index]

let newString = String(firstPart)
