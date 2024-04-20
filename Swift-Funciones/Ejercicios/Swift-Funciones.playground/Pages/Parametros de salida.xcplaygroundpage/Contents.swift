import Foundation


// FUNCION SIN VALORES DE RETORNO.
func greet2(person:String){  //La uasencia de flechita no devuelve nada, pero opera con la cosa que le pasemos.
    print("Hola \(person)")
}
greet2(person: "Ricardo Celis")  // Esto se imprime en consola, pero no en la barra de resultados, por que no devuelve nada ➡️
greet2(person: "Edgar")



// FUNCION CON VALOR DE RETORNO/SALIDA CON UN VALOR ENTERO (Int)
func printAndCount(string: String) -> Int{  // Esto me devuelve un numero entero y se imprime tanto en consola como en la barra de resultados.
    print(string)
    return string.count // El String.count, me va devover el numero de letras que tiene un determinado String.
}
printAndCount(string: "Hola que tal") //Este parametro me imprime en consola "Hola que tal", y en la barra de resultados, los numereos de caracteres que tiene un string.


func printWithoutCounting(string: String){
    let _ = printAndCount(string: string) //El guion bajo (_) se utiliza, cuando no se necesita hacer referencia al valor de una variable o constante en particular
}
printAndCount(string: "Hola que tal") //En estos dos casos me imprime en consola pero solo este me devuelve en la barra de resultados, los numeros de caracteres que tiene el string, por que tiene un parametro de salida Int.
printWithoutCounting(string: "hola que tal")

/* NOTA
-Cuando una función tiene un tipo de retorno definido, se espera que siempre devuelva un valor de ese tipo. No está permitido que la ejecución de la función termine sin devolver un valor cuando se espera uno.
-Y si una función devuelve un valor, pero no necesitamos utilizarlo en nuestro código, podemos ignorar ese valor utilizando el guion bajo (_). Esto indica que no nos importa el valor de retorno y solo estamos interesados en los efectos secundarios de la función, como imprimir en la consola.*/



// FUNCIONES CON MULTIPLES VALORES DE RETORNO        // MINMAX DE UN ARRAY VACIA SIN NUEMERO ⬇️
func minMax(array:[Int]) -> (min: Int, max: Int){  //Ponemos: (min: Int, max: Int)? interogantes y añadimos un .isEmpy
    //if array.isEmpty { return nil }
    
    var currentMin = array[0]  //Aqui generamos el primer numero de la ARRAY.
    var currentMax = array[0]  //Aqui generamos el primer puesto de una ARRAY.
    
    for value in array[1..<array.count]{    //En este caso hacemos un rango de la posicion 1 (la 0 ya la hemos tomado con el currentMin)
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [6,3,-8,3,1,9,5,15,-9])  //Esta constante me devuelve una TUPLA con la funcion minMAX, me devuelve el minimo y el maximo
print("Los valores se hallan entre \(bounds.min) y \(bounds.max)") // Y aqui ponemos un un ("!" - unwrapping) a ➡️ \(bounds!.min) y \(bounds!.max)


/*minMax(array:[]) ➡️  Un ARRAY vacio sin nuemeros */





