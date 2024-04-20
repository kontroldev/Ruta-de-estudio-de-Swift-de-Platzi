import Foundation

//  TRES TIPOS DE CLOSURES

// 1. Global functions (Funciones globales)
// 2. nested fuctions - (funciones anidadas) - Pueden tener la posibilidad de tomar/capturar, valores de la funcion global que las rodea.
// 3. Closure - ( cierres) -  Es una funcion que no tiene nombre, escrita en una sintaxis mas lijera y con optimizaciones mejores.

let names = ["Christian", "Ricardo", "Juan Gabriel", "Edgar", "Freddy"]


 // Creamos una funcion `backward` que va a ordenar de forma descendiente, de forma hacia atras.
func backward(_ s1: String, _ s2: String) -> Bool {    // Aqui toma un parametro de `String`(cadena de texto).
    return s1 > s2  // Aqui devuelve si S1 es mayor que S2
}

backward("Juan Gabriel", "Ricardo")  // Esto es `false`por que Juan Gabriel viene antes que Ricardo. EJERCICIO: Cambiar Ricardo por Edgar para `true`.

var reversedNames = names.sorted(by: backward)  // Este metodo `sorted by`, me reordena names en sentido descendente.
print(reversedNames)

/*
 { (parametro de entrada) -> return type in
 //Codigo del closure
 }
 */

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2})  // Esto es un Closure, y se puede hacer una forma mas simplificado.⬇️
reversedNames = names.sorted(by: { s1, s2 in return s1>s2})

// Ejemplo mas simplificado.👇
reversedNames = names.sorted(by: { s1, s2 in s1 > s2})

// Mas simplificado
reversedNames = names.sorted(by: { $0>$1 })

reversedNames = names.sorted(by: >)      // Closure de ejemplo super simplificada que no funciona como un `Closure`de cierre. Ver ejemplo abajo ⬇️

 
// TRAILING CLOSURES - FINAL CLOSURES

/*Los trailing closures son una característica, que permite escribir un bloque de código como el último argumento de una función o método, fuera de los paréntesis de la llamada a la función. Esto proporciona una sintaxis más limpia y legible, especialmente cuando se trabaja con funciones de orden superior y clausuras.
 
 En lugar de pasar una clausura como un argumento dentro de los paréntesis de la función, puedes colocarla después de los paréntesis cerrados y utilizar la sintaxis de llaves {} para delimitarla. Esto es posible cuando la clausura es el único argumento o el último argumento de la función.*/

func someFunctionThatTakeAClosure(closure: () -> Void) {
    // Aqui iria el cuerpo de la funcion.
}

// Varias formas de llamas a un Closure⬇️
someFunctionThatTakeAClosure(closure: {
    // Aqui iria el cuerpo del Closure.
})

someFunctionThatTakeAClosure {
    // Añadir el closure aqui.
}

reversedNames = names.sorted {$0>$1} // En esta Closure no funciona como la anterioen funcion ⬆️, por que necesitamos saber que vamos a ordenar y tecnicamente no es un funcion, en el sentido que no tiene los parametros de entrada.

/*Los cierres finales son más útiles cuando el cierre es lo suficientemente largo como para que no sea posible escribirlo en una sola línea. Por ejemplo, el tipo Array de Swift tiene un método map(_:), que toma una expresión de cierre como su único argumento. El cierre se llama una vez para cada elemento de la matriz, y devuelve un valor asignado alternativo (posiblemente de algún otro tipo) para ese elemento. Usted especifica la naturaleza de la asignación y el tipo del valor devuelto escribiendo código en el cierre que pasa a map(_:).
 
 Después de aplicar el cierre proporcionado a cada elemento de la matriz, el método map(_:) devuelve una nueva matriz que contiene todos los nuevos valores mapeados, en el mismo orden que sus valores correspondientes en la matriz original.

 Así es como puede usar el método map(_:) con un cierre final para convertir una matriz de valores Int en una matriz de valores de cadena. La matriz [16, 58, 510] se utiliza para crear la nueva matriz ["OneSix", "FiveEight", "FiveOneZero"]:*/



// QUE ES UN MAP:
/* Un map en swift, es una función de orden superior que se utiliza para transformar los elementos de una colección (como un arreglo o un diccionario) mediante la aplicación de una transformación a cada uno de ellos. La función map crea y devuelve una nueva colección con los elementos resultantes de aplicar la transformación a cada elemento de la colección original.*/

let digitNames = [0:"Cero", 1:"Uno", 2:"Dos", 3:"Tres", 4:"Cuatro",5:"Cinco", 6:"Seis", 7:"Siete", 8:"Ocho", 9:"Nueve"]  // Creamos un diccionario.
let numbers = [16, 58, 510, 2127]

// El código anterior crea un diccionario de asignaciones entre los dígitos enteros y las versiones en inglés de sus nombres. También define una matriz de enteros, listos para ser convertidos en cadenas.


// 👇🏻Ahora puede usar la matriz de números para crear una matriz de valores de cadena, pasando una expresión de cierre al método map(_:) de la matriz como un trailing closure(cierre de closure).
let numbersString = numbers.map { (number) -> String in  // 👈🏻 A partir de aqui esto seria un Closure.
    
    var number = number  // Y aqui hacemos una copia, por que llamamos a la constante`number`, y la rconvertimos a una variable.
    var output = ""
    repeat{
        output = digitNames[number%10]! + output  // `number%10`es number modulo 10, que sacamo el cociente de modulo 10, y sacamos un optional.
        number /= 10
    } while number > 0
    return output
}


// EJERCICIO CON NUMEROS NEGATIVOS.

let digitNames2 = [
    0: "Cero", 1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro",
    5: "Cinco", 6: "Seis", 7: "Siete", 8: "Ocho", 9: "Nueve"
]

let numbers2 = [-27, 0, -123, 456]

let numbersString2 = numbers2.map { (number) -> String in
    
    var number = number
    var isNegative = false
    var output = ""
    
    if number < 0 {
        isNegative = true
        number *= -1
    }
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    }while number > 0
    if isNegative {
        output = "-" + output
    }
    return output
}


// CAPTURING VALUES - CAPTURANDO VALORES


/*los "capturing values" en closures se refieren al comportamiento de capturar y almacenar los valores de variables o constantes externas dentro de un closure. Esto permite que el closure acceda y utilice esos valores, incluso si ya no están en el ámbito en el que se definió el closure.
 
 Cuando un closure captura un valor externo, crea una referencia a ese valor y lo almacena en su entorno. Esto permite que el closure acceda a ese valor incluso después de que la variable original haya dejado de existir o se haya modificado.*/


/*Aquí está la explicación desglosada de la sintaxis:⬇️
   
   func: Indica que estás declarando una función.
   makeIncrementer: Es el nombre de la función.
   forIncrement: Es una etiqueta externa que se utiliza al llamar a la función para proporcionar un nombre más descriptivo al argumento amount.
   amount: Es el nombre interno del parámetro de tipo Int que se espera como argumento para la función.
   -> () -> Int: Es la declaración del tipo de retorno de la función. En este caso, la función devuelve un closure que no tiene parámetros (()) y devuelve un valor entero (Int).*/

func makeIncrementer(forIncrement amount: Int) -> () -> Int {  // La sintaxis que mencionas se refiere a la declaración de una función llamada makeIncrementer, que toma un parámetro llamado amount y devuelve un closure (() -> Int).
    
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

// QUE ES AMOUNT: 👆🏻
/*El uso del término "amount" generalmente contextual y depende del contexto específico en el que se utilice. Por ejemplo, en una función o método, "amount" puede referirse al valor de un parámetro que representa una cantidad numérica. También puede usarse para describir la cantidad de elementos en una colección o la cantidad de dinero en una transacción, entre otros casos.*/

let incrementByten = makeIncrementer(forIncrement: 10)
incrementByten()
incrementByten()
incrementByten()

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()

incrementByten()


//ESCAPING CLOSURES - ESCAPANDO DE LOS CIERRES.
/*Escaping closures, son closures que pueden ser ejecutados o llamados más tarde, después de que la función que los contiene haya terminado de ejecutarse. Dicho de otro modo, el closure «se escapa» del ámbito de la función.*/

var completionHandlers: [() -> Void] = []

func someFunctionsWithEscapingClosure(completionHandLer: @escaping () -> Void){    // la `@`se le llama atributos o modificadores.
    completionHandlers.append(completionHandLer)  // al poner `@escaping`, no ejecuta la funcion y la guarda para mas tarde.
}
completionHandlers.count


func someFunctionWithNonEscapingClosure(closure: () -> Void) {
    closure()
}


class SomeClass{
    var x = 10
    func doSomething(){
        someFunctionsWithEscapingClosure {
            self.x = 100    // La palabra reservada `self`, le dice esplicitamente al @escaping closure donde encontar la variante que va hacer uso.
        }
        someFunctionWithNonEscapingClosure {
            x = 200
        }
    }
}


let instance = SomeClass()  // Esto podria ser como un `String`, pero en este caso seria un objero de la someClass.
print(instance.x)

instance.doSomething()
print(instance.x)

completionHandlers.count
completionHandlers.first?()
print(instance.x)


