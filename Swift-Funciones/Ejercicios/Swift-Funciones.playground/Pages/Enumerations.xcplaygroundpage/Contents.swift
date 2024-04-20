import Foundation


/*QUE ES UN ENUMERADO:
Un enumerado (enum) es un tipo de dato que define un grupo de valores relacionados. Es una forma de crear un conjunto fijo de opciones que representan casos específicos. Cada valor en un enum es considerado un caso, y puede tener asociado un valor o ser un valor sin asociación.*/

enum SomeEnumeration{
    // Aqui iria la definicion del enumerado.
}


enum CompassPoint {
    case north
    case south
    case east
    case west
}

// Podemos hacerlo de las dos maneras ⬆️ - ⬇️

enum Planet: Int{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune   // Ponemos mercurio es = 1 le asociamos el numero y posteriormente Swift infiere el resto de numeros incremental sin necesitada de ponerselos a resto.
}

var directionToGo = CompassPoint.east
directionToGo = .north    // Haciendo la prueba de cambiar a: south, east, west.

switch directionToGo {
case .north:
    print("Hay que ir al norte")
case .south:
    print("Hay pinguinos en el sur")
case .east:
    print("Mordor se extiende hacia las tierras del este")
case .west:
    print("Cuidado con los vaqueros")
}

// Si quieres tener en cuenta uno de los valores y obviar el resto. 👇🏻
let somePLanet = Planet.earth
switch somePLanet {
case .earth:
    print("La tierra es segura")
default:
    print("No es seguro ir a este planeta")
}


// Hacer bucles con enumerados ènum`.
enum Beverage: CaseIterable {
    case coffee, tea, juice, redbull
}

let numberOfChoices = Beverage.allCases.count
for beverage in Beverage.allCases{
    print(beverage)
}

// ENUMERADOS: ASSOCIATED VALUES - VALORES ASOCIADOS
enum Barcode{
    case upc(Int, Int, Int ,Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//productBarcode = .qrCode("ABCDEFGHI")                  // Ejemplo, si comentamos esta linea, el ambito de abajo se ira por el codigo de barras.👇🏻

switch productBarcode{
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case let .qrCode(productCode):
    print("QR: \(productCode)")
}


// RAW VALUE - VALORES BRUTOS
enum ASCIIControlCharacter: Character {
    case tab = "\t"  // Esto es salto tabulador
    case lineFeed = "\n"  // Esto es salto de linea
    case carrigereturn = "\r" // Esto es salto de carro
}

let eartOrther = Planet.earth.rawValue   // Si ponemos .RawValue, en vez de poner, el planeta la tierra, me va adar su valor `RAW` y me su valor 3.

let northDirection = CompassPoint.north  // Si queremos consultar el `rawValue` de CompassPoint ⬆️, tenemos que poner que esa constante(mas arriba) que es un `String`.

let possiblePlanet = Planet(rawValue: 5)  // Con esta funcion consultamos el `rawValue` cual es el planeta numero 5.

let planetPosition = 11
if let anyPlanet = Planet(rawValue: planetPosition){
    switch anyPlanet{
    case .earth:
        print("La tierra es segura")
    default:
        print("No es seguro ir a ese planeta")
    }
}else{
    print("El planeta indicado no existe...")
}
