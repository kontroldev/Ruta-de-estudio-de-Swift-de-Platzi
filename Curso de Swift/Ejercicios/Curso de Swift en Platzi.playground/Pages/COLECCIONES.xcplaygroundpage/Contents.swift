import Foundation


//ARRAYS
/*UN ARRAY es una colección ORDENADA de elementos del mismo tipo.
 Cada elemento, tiene una posición en el array, que se puede utilizar para acceder a ese elemento.*/

var someInts = [Int]() //Esto seria un Arrays vacia.

someInts.count
someInts.append(31) // Aqui le añadimos un valor a un elemento.
someInts.count // Aqui vemos como ver cuantos elementoshay dentro de un Array.

someInts = [] //Esto seria una forma de vacia un Array o vacia un ARRAY.

var someDoubles = Array(repeating: 3.141592, count: 3)//La forma de repetir un elemento un determinado numero de veces
someDoubles.count

var soreDouble = Array(repeating: 2.5, count: 4)

var aLotOfDoubles = someDoubles + soreDouble //Une las dos Arrays.
aLotOfDoubles.count

var shoppingList : [String] = ["Papas", "Pimiento", "Tortilla", "Cerdo", "Cebolla"] //Un String ARRAY.
shoppingList.count


//EJERCICIOS
var family = [String]()
family.append("Noelia")
family.append("Isaac")
family.append("NALA")
family.append("JANA")
family.append("ONYX")
family.append("CORA")
family.count

let family2 = ["Noelia", "Isaac", "NALA", "JANA", "ONYX", "CORA"]
family2.count


//ACEDER O MODIFICAR UN ARRAY
if shoppingList.isEmpty{
    print("La lista de la compra esta vacia")
} else{
    print("Mandemos a Raúl a comprar")
}

shoppingList.append("Coca Cola") // Aqui añadimos en valor mas a la Array
shoppingList.count

shoppingList += ["Totopos", "Guacamoles"] //Otra forma de añadir valores a una Array.
shoppingList.count

var firsElement = shoppingList[0] // Con esto podemos consultar el elemento o dato que hay en la esa posicion de la Array.
shoppingList[0] = "Huevos" //Esto cambiamos el elemento o dato de la posicion selecionada.
shoppingList
shoppingList[4...6] //Consultamos en las posiciones marcadas los valores que hay en esa Array utilizando los RANGOS.
shoppingList[4...6] = ["Naranja", "Platano", "Mango"] // Cmabiamos el elemento/valor la posiciopn seleccionada de un ARRAY.


//BORRAR ELEMENTO DE UN ARRAY
let pepper = shoppingList.remove(at: 1) //Con esto eleminamos un elemento/valor e la posicion selecionada de un ARRAY.
shoppingList.removeLast() //Eliminamos el ultimo elemento/valor de un ARRAY.

for item in shoppingList{ //Con esto optenemos los elementos/valores que tenemos dentro de un ARRAY.
    print(item)
}
for (idx, item) in shoppingList.enumerated(){  //Esta funcion crea una lista de un ARRAY (MIRAR EJEMPLO EN LA CONSOLA ⬇️)
    print("Item \(idx+1): \(item) ")
}


//CONJUNTO - (SET)
/*Un SET es una colección NO ordenada de elementos únicos.
 Cada elemento en un set debe ser único(NO se puede repetir).

Los sets se definen utilizando la sintaxis de corchetes, como se muestra a continuación:⬇️*/

var letters = Set<Character>() //Asi se hace un SET vacio.
letters.count
letters.insert("a") // Y de esta manera se añade valores a un SET.
letters.insert("h")
letters.insert("b")
letters

var favouritGames : Set<String> = ["Battlefield", "FIFA23", "SOCOM", "Batman Arkham"]
favouritGames.count

if favouritGames.isEmpty{
    print("No hay juegos favoritos") //Si eliminamos los juegos de arriba, esta linea de ejecutaria. un SET vacio.
}

//Para añadir elementos a un SET ⬇️
favouritGames.insert("Metal Gear Solid")

//Para consultar si hay un elemento en un SET.
if favouritGames.contains("Metal Gear Solid"){
    print("Me encanta ese juego")
}

//Para eliminar un elemento a un SET
//*Como no tenemos posicion ordenada en un SET hay que hacerlo del siguiente modo
if let removeGame = favouritGames.remove("Metal Gear Solid"){
    print("He eliminado de la lista \(removeGame)")
}

for vg in favouritGames{
    print(vg)
}

for vg in favouritGames.sorted(){ //Poniendo el comando ".sorted()" a la hora de imprimir los valores, quedaran ordenadro de la manera que fueron añadidos.
    print(vg)
}


//OPERACIONES CON CONJUNTOS.
let oddDigits: Set = [1, 3, 5, 7, 9]
let eventDigits: Set = [0, 2, 4, 6, 8]
let primeNumbers : Set = [2, 3, 5, 7]

//A union B = elementos que son o bien de A, o bien de B o de los dos.
oddDigits.union(eventDigits).sorted() //Ponemos .sorted para ordenarlos los elementos.

//A intersección B = elementos que son a la de vez de A y de B
oddDigits.intersection(eventDigits) //Esto hace que busca si en el SETY hay un elemento que sea par y impart a la vez, al no a ver ninguno, me sale vacio.
eventDigits.intersection(primeNumbers).sorted() //Esto saca los numeros primos pares de los elementos.
oddDigits.intersection(primeNumbers).sorted() //Esto saca los impares de numeros primos de los elementos.

//A - B = elementos que nos son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted() //Elimino todos los numero impares que nos son primos son: ➡️

// A + B = (A-B) union (B-A) Diferencia simetrica entre A y B
oddDigits.symmetricDifference(primeNumbers).sorted() // Los numero pares que no son primos, y los numeros primos que no son pares. ➡️



let houseAnimals:Set = ["🐶", "😹"]
let farmAniumals:Set = ["🐮", "🐔", " 🐑", "🐶", "😹"]
let cityAnimales:Set = ["🐀", "🕊️"]

houseAnimals.isSubset(of: farmAniumals) // Let 1, es un subconjuntos de let 2: ➡️ el perro y el gato, esta contenido en los dos conjuntos.
farmAniumals.isSuperset(of: houseAnimals)  //Let 2 es un super conjunto de let 1:➡️
farmAniumals.isDisjoint(with: cityAnimales)  //A y B son disjuntos si su interseccion es vacía.    //REPASAR!!!! ⬅️↖️



//DICCIONARIO.
/*Un diccionario es un tipo de colección que almacena datos como pares de clave-valor (Indice-Valor). Cada elemento en un diccionario está compuesto por una clave única y un valor asociado que puede ser de cualquier tipo de dato.*/
/*Diferencias entre tuplas y diccionarios:
 Las tuplas pueden o no tener una llave.
 Las tuplas solo pueden contener una cantidad predefinida de valores
 Las tuplas pueden combinar varios tipos de valores, mientras que los diccionarios tiene un solo tipo homogéneo.
 
 
 //EJEMPLOS⬇️
 TUPLAS⬇️
 let persona = ("Juan", 30, true)
DICCIONARIOS⬇️
 var dictionary = ["Nombre: kontrol, Apellido: Dev, edad: 44"]*/

var nameOfIntegers = [Int: String]() //Un diccionario vacio
nameOfIntegers[15] = "quince"
nameOfIntegers = [:] //Asi podemos vacia un Diccionario.

var airPorts: [String: String] = ["YYZ": "Toronto", "DUB": "Dublin", "PMI": "Palma de Mallorca"]

airPorts.count
airPorts.isEmpty //Indica si el objeto está vacío o no.
airPorts["LHR"] = "London City Airport" //Para añadir un dato mas al diccionario.
airPorts
airPorts["LHR"] = "London Hearthrow" //Esto cambio el valor al diccionario
airPorts

if let oldValue = airPorts.updateValue("Dublin Airport", forKey: "DUB") { //Esto sobre escribimos o actualizamos el DUB
    print("El aeropuerto tenia antiguamnete el nombre de \(oldValue)")
}
airPorts

if let airportName = airPorts["DUB"]{
    print("El aeropuerto de DUB es: \(airportName)")
}

//ELIMINAR OBJETOS DENTRO DE UN DICCIONARIO⬇️
airPorts["PMI"] = nil
airPorts

if airPorts.removeValue(forKey: "DUB") != nil { //Le indicamos una clave de un diccionario y si esta lo elimina.
}
airPorts


//HACER BLUCLES DE LOS DICCIONARIOS⬇️
for (key, value) in airPorts {  //Key se llevaria la clave del aeropuerto y value seria el nombre del aeropuerto.  ⬅️(Esto me deveuleve las clave y valor)
    print("\(key) - \(value)")
}

for airportKey in airPorts.keys{ //Esto solo me devuelve, las claves de un diccionario
    print(airportKey)
}

for airportName in airPorts.values{ //Esto solo de devuelve los valores de los diccionario.
    print(airportName)
}

let airportKeys = [String](airPorts.keys.sorted()) //Esto no genera un ARRAY de todas las claves y las ordena con el comando .sorted
let airportName = [String](airPorts.values.sorted()) //Esto no genera un ARRAY de todas los valores y las ordenara con el comando .sorted


/*NOTA
 
 Diferencias entre un ARRAY y un SET
 
-Orden: Un array mantiene un orden específico de los elementos que refleja cómo se agregaron al array. Por otro lado, un set no mantiene un orden específico de los elementos. No puedes acceder a los elementos de un set mediante índices como lo haces en un array.
 
-Elementos duplicados: En un array, puedes tener elementos duplicados, lo que significa que el mismo valor puede aparecer varias veces en el array. En cambio, un set no permite elementos duplicados. Cada elemento en un set debe ser único.
 
-Acceso a elementos: En un array, puedes acceder a los elementos individualmente utilizando índices basados en cero. Puedes obtener o modificar un elemento específico del array utilizando su posición en el índice. En un set, no puedes acceder a elementos individuales mediante índices. En cambio, utilizas métodos y operaciones específicas de conjunto para realizar acciones en el set en su conjunto.
 
-Eficiencia en búsquedas: Los sets son particularmente eficientes para realizar búsquedas rápidas. Dado que los sets están diseñados internamente para optimizar la búsqueda de elementos únicos, ofrecen un rendimiento eficiente para determinar la existencia de un elemento en el set. Los arrays, por otro lado, pueden requerir una búsqueda lineal en la mayoría de los casos.
 
-Operaciones de conjunto: Los sets en Swift ofrecen operaciones específicas de conjunto, como unión, intersección y diferencia, que son útiles para realizar comparaciones y manipulaciones de conjuntos de elementos. Los arrays no ofrecen estas operaciones directamente.
 
En resumen, un array es una colección ordenada de elementos que permite duplicados y ofrece acceso mediante índices. Un set es una colección desordenada de elementos únicos que ofrece eficiencia en búsquedas y operaciones de conjunto especializadas. La elección entre un array y un set dependerá de las necesidades específicas de tu aplicación y de la forma en que desees organizar y acceder a tus datos.*/
