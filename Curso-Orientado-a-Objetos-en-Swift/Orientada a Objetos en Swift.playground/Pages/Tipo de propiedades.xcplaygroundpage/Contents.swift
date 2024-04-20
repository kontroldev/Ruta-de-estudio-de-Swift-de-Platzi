import Foundation

// STORED PROPERTIES - PROPIEDADES ⬇️
/*Las PROPIEDADES las podemos encontrar en:
 -Estrcturas : SI
 -Clases: SI                          -Enumerados: NO*/
 
struct FixedLengthrange {
    var firsValue: Int  // Esto son propiedades de la estrctura.
    let length: Int
}

var rangeOfThreeItems = FixedLengthrange(firsValue: 0, length: 3)

rangeOfThreeItems.firsValue = 6

let rangeOfFourItems = FixedLengthrange(firsValue: 0, length: 4)
//rangeOfFourItems.firsValue = 5 ESTO DA ERROR POR SER UNA CONSTANTE


// LAZY PROPERTIES ⬇️
class DataImported {
    var filename = "data.txt"
}

class Datamanager {
    lazy var imported = DataImported()  // Esta linea con un lazy, no se ejecuta hasta que sea llamada mas abajo por un `.imported`👇🏻 y asi se ahorra memoria.
    var data = [String]()
}

let manager = Datamanager()
manager.data.append("Algo de datos")
manager.data.append("Mucho mas datos")
// Hasta esta linea, el importer no ha sido creado...⬅️
manager.imported.filename
// Aqui el importer, ya a sido creada.
manager


// COMPUTED PROPERTIES.  ⬇️
/* Las "Computed Properties" (Propiedades calculadas) son una característica que te permite definir propiedades en una clase, estructura o enumeración cuyo valor se calcula en tiempo real en lugar de almacenarse directamente.*/

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {  // tamaño de un objeto.
    var width = 0.0, height = 0.0   // Ancho y alto del objeto
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {  // Este Point no es igual que el origin, este seria una computed properties y sera calculada entre el origen y el tamaño.
    /*➡️*/   get{  // el get devuelve el valor que deveria tener el centro `center`
            let centerX = origin.x + size.width/2   // Aqui definimos el valor de un rectangulo,(origen + la mitad de la anchura) + (origen + la mitad de la altura)
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
 /*➡️*/     set(newCenter){   // Aqui mantenemos el tamaño del rectangulo, pero cambiamos su nuevo centro del su origen. Se hace en este caso con un `set`en vez de un `get`
                origin.x = newCenter.x - (size.width / 2)
                origin.y = newCenter.y - (size.height / 2)
               }
           }
       }

 /*Se puede hacer de otra manera mas sencilla para reecribir el `geter` y `seter` 👇
                get{
           Point(x: origin.x + size.width/2, y:  origin.y + size.height/2
  }
                 set {
               origin.x = newValue.x - size.width/2
               origin.y = newValue.y - size.height/2
           }
*/

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center

square.center = Point(x: 20.0, y: 20.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")


// COMPUTED PROPERTIES SOLO LECTURA
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volumen: Double {
        return width * height * depth   // La diferencia de un Computed properties de lectura es poniendo return.
    }
}

let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
cuboid.volumen


// PROPERTIES OBSERVERS ⬇️

//willSet - se va a configurar antes de cambiar el valor de una propertie.
//didSet - se va a ejecutar despues de cambiar el valor del valor de propertie.

class StepCounter {
    var totalSteps: Int = 0{
        willSet(newTotalSteps){
            print("El numero de pasos va a subir hasta \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue{  // oldValue es el dato antiguo.
                print("El numero de pasos a incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 520
stepCounter.totalSteps += 1234


// TYPE PROPERTIES
struct someStruct {
    var counter = 0
    static var storedTypeProperty = "SOME VALUE"
    static var computedTypeProperty: Int {
        return 1
    }
}
/* Para acceder a una propiedades estaticas `properties static` tendremos que hacerlo mediante a la estructuras en vez de una instancia.*/

var instanceStr = someStruct()
someStruct.computedTypeProperty  // De esta manera podemos acceder a las `computer propertie`directamente en la estructura.

enum SomeEnum{
    static var storedTypeProperty = "SomeValue"
    static var computedTypeproperty: Int{
        return 5
    }
}

SomeEnum.storedTypeProperty


class SomeClass{
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty:Int{
        return -9
    }
    class var overrideableComputerTypeProperty:Int{
        return 108
    }
}

