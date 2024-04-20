import Foundation


//FUNCIONES SIN PARAMETROS
func sayHelloWorld() -> String {   //Una funcion sin parametros de entrada.
    return "Hello World"
}
sayHelloWorld()
sayHelloWorld()


// FUNCIONES CON MULTIPLES ENTRADAS
func greeting(person: String, isMale:Bool) -> String {  //Esta funcion me devolvera una cadena de texto "String" y podemos añadir mas parametros sepàrados por comas.
    if isMale {   // ⬅️ Si es un hombre devolvemos...   // ⬆️ Esta funcion tiene dos parametros de entrada.( person y isMale)
        return "Bienvenido caballero \(person)"
    }else{       //Si no es un hombre
        return "Bienvenida Señorita \(person)"
    }                                            //return siempre me devuelve un valor.
}
greeting(person: "Ricardo Celis", isMale: true)
greeting(person: "Olivia", isMale: false)


// EJERCICIOS CON 3 ENTRADAS
func anotherGreeting(person: String, isMale: Bool, age: Int) -> String{
    if isMale && age > 20{
        return "Bienvenido Caballero \(person)"
    }else if isMale && age <= 20{
        return "Bienvenido Señorito \(person)"
    }else if !isMale && age > 20{
        return "Bienvenida Señora \(person)"
    }else {
        return "Bienvenida Señorita \(person)"
    }
}

anotherGreeting(person: "kontrol", isMale: true, age: 44)
anotherGreeting(person: "N_Mu", isMale: false, age: 50)
anotherGreeting(person: "ONYX", isMale: true, age: 3)
anotherGreeting(person: "CORA", isMale: false, age: 2)





