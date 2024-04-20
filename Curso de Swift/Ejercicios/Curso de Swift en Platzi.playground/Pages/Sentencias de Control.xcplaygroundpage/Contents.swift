import Foundation


//BUCLE FOR IN
/*Es una sentencia de control que se utiliza para iterar sobre una secuencia de elementos, como una matriz, un rango de números o un diccionario*/

let names = ["Ricardo Celis", "Juan Gabriel", "Edgar"]

for name in names{
    print("Hola \(name)") //Interer sobre un ARRAY
}

let numberOfLegs = ["spider": 8, "ant": 6, "dog": 4]

for (animalName, legCount) in numberOfLegs{
    print("Animal \(animalName), numero de patas: \(legCount)") //Bucle For in de un diccionario.
}

for idx in 1...5{
    print("\(idx) x 3 = \(idx*3)") //Bucle For in con Rangos.
}

//calcular la potencia elevado a 2
let base = 2
let power = 10
var answer = 1

for _ in 0..<power{ //Se utiliza guion bajo como comodín para representar cualquier valor, sin importar su identidad.
    answer *= base
    print(answer)
}


let hour = 0
var minute = 60
let minuteInterval = 5

for tickMark in 0..<minute{
    print("\(hour) : \(tickMark)")
}
//print(tickMark)  ⬅️⬇️Esta variable fuera del ambito en un bucle for deja de existir en comparacion en bucle while

for tickMark2 in stride(from: 0, to: minute, by: minuteInterval){ //stride() se utiliza para crear una secuencia de valores que se incrementan o decrementan de forma regular.
    print("\(hour) : \(tickMark2)")
}


//EJERCICIOS
for hour in 0..<24 {
    for minute in stride(from: 0, to: 60, by: 15) {
        print(String(format: "%02d:%02d", hour, minute))
    }
}


//BUCLE WHILE
/*Un bucle while es una estructura de control que permite ejecutar repetidamente un bloque de código mientras se cumpla una determinada condición*/

var i = 0

while i <= 10 { //Una ventaja del bucles While, es que si declaras una variable fuera del ambito, va a existir despues del bucle, pero esto no pasa lo mismo con el bucle FOR.
    i += 1
}
print(i)

/*La principal diferencia entre "repeat-while"⬇️ y "while"⬆️ es que "repeat-while" siempre ejecuta el bloque de código al menos una vez, incluso si la condición es falsa en la primera iteración. Después de ejecutar el bloque de código, la condición se evalúa y, si es verdadera, el bloque se ejecuta nuevamente.
 Este proceso se repite hasta que la condición se vuelva falsa.*/

repeat {
    i += 1
} while i <= 10
print(i)


//EJERCICIOS
for i in 2...100 {
    var esPrimo = true
    
    for j in 2..<i {
        if i % j == 0 {
            esPrimo = false
            break
        }
    }
    
    if esPrimo {
        print(i)
    }
}


//USO DE IF Y ELSE
/*La sentencia if se utiliza para evaluar una condición y ejecutar un bloque de código si la condición es verdadera.
 La sentencia else se utiliza para ejecutar un bloque de código si la condición del if es falsa.*/

var temp = 18

if temp <= 15{
    print("Hace frio! Enciende la calefaccion")
} else if temp >= 25{
    print("Empieza hacer calor! Enceder el aire acondicionado")
} else{
    print("La sensacion termica es agradable. No hace falta modificarla")
}


//USO DE SWITCH
/*La sentencia switch se utiliza para evaluar un valor y ejecutar diferentes bloques de código dependiendo del valor de la expresión evaluada.
 Una sentencia case se utiliza dentro de una sentencia switch para definir un posible valor en la expresión evaluada en la sentencia switch puede tomar.*/

let someCharacter: Character = "k"

switch someCharacter {
case "a":    //EJEMPLO ➡️ case "a", "A": Podemos juntar todos los casos que queramos: a minuscula o A mayuscula por comas, como si fueran una TUPLAS.
    print("Es la primera letra del alfabeto")
case "z":
    print("Es la ultima letra del alfabeto")
default:           //⬅️Poner default por que tiene que evaluar todos los casos al cambiar la z por otra letra no entraria en los primeros CASe y no se evaluarian y nos daria error.
    print("Es alguna otra letra")
}


//SWITCH CON OPERADORES DE RANGOS
let moons = 62
let phrase = "lunas en Saturno"
let naturalCount : String

switch moons {
case 0:
    naturalCount = "No hay"
case 1..<5:
    naturalCount = "Hay unas pocas"
case 5..<12:
    naturalCount = "Hay bastantes"
case 12..<100:
    naturalCount = "Hay decenas de"
case 100..<10000:
    naturalCount = "Hay centenares de"
default:
    naturalCount = "Hay muchiiiiisimas"
}
print("\(naturalCount) \(phrase)")


//EJERCICIOS
let leavemoney = 100

switch leavemoney {
case 0..<10:
    print("Ok, puedo dejarte el dinero")
case 10..<30:
    print("Bueno, te lo puedo dejar")
case 30..<50:
    print("Me lo pienso")
case 50...70:
    print("Ya te dire algo")
case 70...100:
    print("No te lo puedo dejat")
default:()
}

//SWITCH USANDO TUPLAS
let somePoint = (1,1)

switch somePoint {
case (0,0):                                               //Utilizamos una TUPLAS, para agrupar múltiples valores en una sola entidad o linea.
    print("El punto \(somePoint) es el orignes de las cordenadas")
case (_, 0):                                             //Barra baja, puedes ser cualquier valor.
    print("El punto \(somePoint) se halla sobre el eje de las x")
case (0, _):
    print("El punto \(somePoint) se halla sobre el eje de la y")
case (-2...2, -2...2):                                   //Utilizamos operadores de RANGO
    print("El punto \(somePoint) se halla en el interior del cuadrado de lado 4")
default:
    print("El punto \(somePoint) está en algún otro lado")
}


let anotherPoint = (2,0)

switch anotherPoint {
case (let x, 0):
    print("Sobre el eje de las X, con valor \(x)")
case (0, let y):
    print("Sobre el eje de las Y, con valor \(y)")
case let (x,y):
    print("En algun otro lugar del plano, en \(x), \(y)")
}

//SWITCH CON CASOS COMPUESTOS.
let anotherCharacter: Character = "e"
switch anotherCharacter {
case "a", "e", "i", "o", "u":
    print("Se trata de una volcal")
case "b", "c", "d", "f", "g": //TODO acabar con el resto de abecedario (solo consonantes)
    print("se trata de una consonante")
default:
    print("Se trata de un caracter no vocal ni consonante (minusculas")
}


//CONTROL DE SENTENCIAS DE CONTROL - continue, break, fallthrough, return, throw

let sentence = "las mentes grandes piensan igual"
var filteredSentence = ""
let characterToRemove:[Character] = ["a", "e", "i", "o", "u"]

for ch in sentence {
    if characterToRemove.contains(ch){  //La función ".contains" es un método que se utiliza para verificar si un objeto de una colección (como un array o un set) contiene un elemento específico.
   continue
    }  // ⬆️ Esta sentencia no haria nada y seguiria hacia abajo.
    filteredSentence.append(ch)
    if ch == "d" {
        break
    }
}
filteredSentence


//FALLTHROUGH

let integerToDescribe = 5
var description = "El numero \(integerToDescribe) es"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " un numero primo y" //Ejemplo 1: Una vez que caemos en el primer CASE ya no caemos en el default.
    fallthrough
default:
    description += " un numero entero"
}
print(description)



// RETURN Y GUARD

var people = ["name": "Juan Gabriel", "age": 31, "isMale": true] as [String: Any]

func testUserValidation(person:[String: Any]){
    guard let surname = person["name"] else{    //Ejercicio: Cambiar name por surname
        print("El nombre es desconocida")      //Ejercicio: cambiar el apellido
        return
    }
    //Hasta aqui llega la variable surname
    print(surname)
    guard let age = person["age"] else {
        print("La edad es desconocida")
        return
    }
    print("La edad de la persona es \(age)")
}
testUserValidation(person: people)

//MANEJO DE VERSIONES

if #available(iOS 12, macOS 10.12, *){
    //Ejecutar las acciones a lo iOS12+ y lo macOS10 y posterior
}else{
    //Mantener el codigo viejo con versiones anteriores a iOS, macOS...
}

