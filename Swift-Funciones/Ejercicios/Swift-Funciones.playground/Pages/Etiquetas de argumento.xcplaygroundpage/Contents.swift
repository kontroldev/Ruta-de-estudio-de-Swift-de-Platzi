import Foundation

//PARAMETROS DE ENTRADA CON ETIQUETAS
func someFunction(f1 firstParamName: Int, f2 secondParamName: Int = 6){  //Escribir una etiqueta de argumento antes del nombre del parámetro, separada por un espacio
    //firstParamName variable de tipo Int - f1 es una etiqueta ó un argumentos
    //secondParamName variable de tipo Int - f2 es una etiqueta ó un argumento
    print(firstParamName + secondParamName)
}
//someFunction(firstParamName: 5, secondParamName: 1)  Cuando llamamos a la funcion con (etiquetas) f1 y f2 ya no sera necesario invocarlos con el nombre completo.
someFunction(f1: 5, f2: 1)  //Esto es una buena practica, cuando tenemos dos o mas parametros.⬆️
someFunction(f1: 5)


func greeting(person: String, from hometown: String) -> String{
    return "Hola \(person) un placer que nos visites desde \(hometown)"
}

greeting(person: "KontrolDev", from: "Cupertino")
print(greeting(person: "KontrolDev", from: "Cupertino"))

//AUSENCIA DE ARGUNTENTO EN UNA ETIQUETA
func greeting(_ person: String, from hometown: String) -> String { //Se le pone barra baja como ausnecia de la etiqueta.
    return "hola \(person) un placer que nos visites desde \(hometown)"
}

greeting("N_Mu", from: "Barcelona") //Y se le quite person cuando hay ausencia de etiqueta.


// Sacar la media aritmetica.                                REPASAR ESTA LECCION ⬇️
func mean(_ numbers: Double...) -> Double {
    var total : Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
    
}

mean(1,2,3,4,5)
mean(1.5, 2.7)
mean(3, 4.5, 18.75)
