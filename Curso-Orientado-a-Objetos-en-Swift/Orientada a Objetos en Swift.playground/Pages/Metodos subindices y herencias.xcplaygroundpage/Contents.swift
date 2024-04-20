import Foundation

//METODOS DE INSTANCIAS
class Counter {  // Clase ó estructura
    var count = 0  // Propiedad/propertie
    
    func increment() {  // ⬅️ `increment` es una instancia y el resto es el metodo.
        self.count += 1
    }
    func increment(by amount:Int) { // instancia y un metodo
        self.count += amount
    }
    func reset() {  // instancia y un metodo
        self.count = 0
    }
}         //  Se utiliza `self.count` para hacer referencia a la `propiedad` count de la `instancia` actual de Counter.

let counter = Counter() // Esto es la instancia, o este objeto de la clase Counter.
counter.increment()
counter.increment(by: 8)
counter.reset()

// Ejemplo de en vez de una clase en una estructura.⬇️
struct Point {
    var x = 0.0, y = 0.0   // `x`es la Propertie - valores de una estructra.
    func isToTheRight(of x:Double) -> Bool {  // `x:Double` es el argumento
        return self.x > x   // La primera X es la que se refiere a la `Propertie` y la segunda X se refiere al `argumento`
    }
}

let somePoint = Point(x: 4, y:5)
somePoint.isToTheRight(of: 1)   // Mi punto esta a la derecha de: 1
somePoint.isToTheRight(of: 54)  // Mi punto esta a la derecha de: 54 y nos devolvera un boleano, por que 54 no es mas grande que la cordenada X del punto, que es 4.
 


// METODO MUTABLES
struct Point2 {
    var x = 0.0, y = 0.0   // `x`es la Propertie
    func isToTheRight2(of x:Double) -> Bool {  // `x:Double` es el argumento
        return self.x > x   // La primera X es la que se referiere a la `Propertie` y la segunda X se refiere al `argumento`
    }
    mutating func moveBy(x deltaX:Double, y deltaY:Double){
        //self.x += deltaX
        //self.y += deltaY    // NOTA: ↖️ Una funcion no puede ser cambiada sus valores, en una estructura o en un enumerado, salvo que la llamemos con la palabra - `mutating`
        self = Point2(x: self.x + deltaX, y: self.y + deltaY) // echo de esta manera, este `self`sobreescribe toda el valor de la estructura y de la otra manera solo podrias combiar el punto "X" o el punto "Y".
    }
}

var somePoint2 = Point2(x: 4, y:5)
somePoint.isToTheRight(of: 1)
somePoint.isToTheRight(of: 54)

somePoint2.moveBy(x: 2, y: -3)
somePoint2.x = 9
 

enum DifferentStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var controllerStatus = DifferentStateSwitch.off
controllerStatus.next()
controllerStatus.next()
controllerStatus.next()



// METODOS DE CLASES

class SomeClass {
    class func someMethod() {
        print("HOLA")
    }
}

SomeClass.someMethod()

struct LevelTracker{
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level:Int){
        if level > highestUnlockedLevel{
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool{
        return level <= highestUnlockedLevel
    }
    
    mutating func advance(to level:Int) -> Bool {
        if LevelTracker.isUnlocked(level){
            currentLevel = level
            return true
        }else{
            return false
        }
    }
    
}

class Player{
    var tracker = LevelTracker()
    let playerName:String
    func complete(level: Int){
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    
    init(name: String) {
        self.playerName = name
    }
}


var player = Player(name: "Juan Gabriel")
player.complete(level: 1)
player

player.complete(level: 7)

if player.tracker.advance(to: 7){
    print("Podemos avanzar hasta el nivel 7")
} else {
    print("El nivel 7 sigue bloqueado por ahora")
}


// SUBINDICES
struct TimeTable {
    let multiplier:Int
    
    subscript(index:Int) -> Int {
        return multiplier * index
    }
}

let threeTimeTables = TimeTable(multiplier: 3)
print("6x3 = \(threeTimeTables[6])")

for idx in 0...10 {
    print("\(idx) x 3 = \(threeTimeTables[idx])")
}

enum Planet : Int {
case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

let mars = Planet[4]
mars


// MATRICES USANDO SUBINDICES
struct Matrix {
    let rows : Int, columns : Int
    var grid : [Double]
}
