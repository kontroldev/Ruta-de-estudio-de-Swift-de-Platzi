import Foundation

let name = "Juan Gabriel 😎"
for character in name {
    print(character)
}
print(name.count) // Puedes saber cuantos caracteres tiene tu String.

let exclamationMark : Character = "!"

let nameChars: [Character] = ["J", "u" , "a" , "n"]
var nameString = String(nameChars) // En vez de poner los String separados, esta formna, junta el string.

let compoundName = "Jaun " + "Gabriel"

nameString + String(exclamationMark) //⬅️ Se puede hacer de las dos maneras.⬇️

nameString.append(exclamationMark)

let multiplayer = 3
var message = "El producto de \(multiplayer) X 3.5 da \(Double(multiplayer)*3.5)";message.append(exclamationMark) //String multilinea


//EJERCICIOS

let nameCaracter2 : [Character] = ["R" , "A" , "U" , "L"]
var nameString2 = String(nameCaracter2)
let country = "\u{1F1EA}\u{1F1F8}"

var newName = "Me llamo \(nameString2) y soy de \(country)"
print(newName)

let number = 5
for table in 1...10{
    let res = number * table
    print("\(number) * \(table) = \(res)")
}



