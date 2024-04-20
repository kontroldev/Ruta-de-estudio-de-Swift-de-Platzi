import Foundation

// STRUCT vs CLASS - ESTRUCTURA vs CLASE.
/*Las estructuras y las clases en Swift tienen muchas cosas en común.
 
 Ambas pueden:
 - Definir propiedades para almacenar valores.
 - Definir métodos para proporcionar funcionalidad.
 - Definir subíndices para proporcionar acceso a sus valores utilizando la sintaxis de subíndice. (Esto solo esta en Swift)
 - Definir los inicializadores para configurar su estado inicial.
 
 Y las clases se diferencian:
 Las clases tienen capacidades adicionales que las estructuras no tienen:
 - La herencia permite a una clase heredar las características de otra. - Herencia
 - La fundición de tipos le permite comprobar e interpretar el tipo de instancia de clase en tiempo de ejecución. - Casting
 - Los desinicializadores permiten que una instancia de una clase libere cualquier recurso que haya asignado. - Desinicializador para liberar memoria
 - -Reference counting: sistema que permite localizar cuántos fragmentos de código están usando una determinada variable, esta implementado para referenciar mas de una referencia por clase en tiempo de ejecución.
 Localiza cuantos fragmentos de codigo, estan usando una determninada variable.*/


struct SomeStruct {       // Asi se define una estructura.
    // La definicion de la estreuctura aqui
}

class SomeClass {        // Asi de define una clase.
    // La definicion de la clase aqui.
}


struct Resolution {   // La estructura tiene en este caso dos propiedades(width, height) estas se llaman `Stored Properties`, forman parte de la estructura y puedes ser variables en tiempo de ejecucion.
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

// Esto crea un "objeto" de la estructura o de la clase
// Esto es tambien instansciar una clase o una estructura.
let someResolution = Resolution() // Esto crea un obejeto de la estructra o de la clase para ser usado en codigo.
let someVideoMode = VideoMode()       // Esto tambien se puede llamar un `Init`

print(someResolution.width)  //La funcion `.width` accede a la funcion de la `Resolution` - "computed properties",para preguntar la resolucion de esa funcion.
someVideoMode.resolution.width = 1280  // Cambia el valor. de `someVideMode` - `resolucion`y accedo con el `.width`
print(someVideoMode.resolution.width)


/* NOTA IMPORTANTE
 
 - La instancia que sea constente nunca podra cambiar si estado por ser una "constante" pero, si las variables qued tenga en su interior `Store Properties`-`computed properties`si podran hacerlo
 
 UNA ESTRUCTURA DECLARADA COMO CONSTANTE NO PODRÁ CAMBIAR SUS VALORES, PERO SI LA INSTANCIA DE UN OBJETO DENTRO DE ELLA.*/


//ESTRUCTURAS: DATOS COPIADOS POR VALOR ⬇️

let vga = Resolution(width: 640, height: 480)
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")
print("\(hd.width) x \(hd.height)")

enum CompassPoint {
    case north, south, east, west
}

var currentDirection = CompassPoint.north
let oldDirection = currentDirection   // `oldDirection` es una copia de `currentDirection`
currentDirection = .south

print(currentDirection)
print(oldDirection)


// CLASES: DATOS POR REFERENCIAS

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0
let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

if tenEighty === alsoTenEighty {  // Para comparar dos objetos, en est caso en vez de usar 2 `==` vamos a tener que usar 3 `===` para hacer la conmporapacion.
    print("Son el mismo objeto")     // Y si ponemos !== estamos diciendo la no igualdad.
}else{
    print("No son el mismo objeto")
}
