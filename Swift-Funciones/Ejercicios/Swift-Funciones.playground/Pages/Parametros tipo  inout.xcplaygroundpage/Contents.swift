import Foundation

let x = 5
func addOne(number: Int) {
    var number2 = number
    number2 += 1
    print("El numero ahora vale \(number2)")
}

addOne(number: x)

func swapTwoInts(_ a: inout Int,_ b: inout Int){   // Se marcan inout cuando se declaran como parametro de una funcion.
    let tempA = a
    a = b
    b = tempA
}

// Tipos por valor, tipos por referencia?.
var someInt = 3
var otherInt = 7
print("some int vale \(someInt) y otherInt vale \(otherInt)")
swapTwoInts(&someInt, &otherInt)                   // Se marca con un (&) cuando son sometidos para ser suministrados en una fucnion en cuestion.
print("some int vale \(someInt) y otherInt vale \(otherInt)")
