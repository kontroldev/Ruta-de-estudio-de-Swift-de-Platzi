import Foundation


func addTwoInts(_ a: Int, _ b: Int) -> Int {    // Una funcion que acepta dos enteros de entrada y devuelve un entero de salida. (Mismo caso abajo⬇️)
    return a+b
}                      // (Int, Int) -> Int

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {  // Un valor de entero -  entero, y devolvera un entero
    return a*b
}                           // (Int, Int) -> Int
/*La barra baja (_) se utiliza en Swift para indicar que el parámetro no requiere un nombre externo cuando se llama a la función. Es decir, al usar la barra baja, no necesitas especificar el nombre del parámetro cuando llamas a la función.*/

func printHW() {
    print("Hello World")
}    // () -> Void o vacio

var mathFunction: (Int, Int) -> Int = multiplyTwoInts  // EJEMPLO:Podemos cambiar adTwoInts por addTwoInts/multiplyTwoInts para que cambie la funcion (arriba declarada)de una suma a una multiplicacion.
mathFunction(4,5)  // Esta variable, acepta paremetros de entrada.


func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int){  // Una funcion que  cuyo parametro de entrrada es una funcion que acepta dos parametros de entrada y devuelve un unico parametro de salida, que le pasamos un segundo parametro (a) entero y otro pararametro (b) de tipo entero, que no esta devolviendo nada.
    print("Resultado: \(mathFunction(a,b))")   // mathFuction evaluado en (a) y en (b).
}

printMathResult(multiplyTwoInts, 5, 9)

func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

stepBackward(5)
                                                         //La función `chooStepFuction` toma un argumento booleano llamado `backward` y devuelve una función que toma un entero y devuelve otro entero.
func chooStepFuction(backward: Bool ) -> (Int) -> Int {
    return backward ? stepBackward : stepForward  //  Si `backward` es `true`, la función devuelta será `stepBackward`. Si `backward` es `false`, la función devuelta será `stepForward`.
}

/*Por lo tanto, el propósito de esta función es seleccionar y devolver una función de paso, ya sea `stepBackward` o `stepForward`, según el valor del argumento `backward`. Esto permite tener una función flexible que puede cambiar su comportamiento dependiendo de la entrada booleana.*/


/*La función chooStepFuction se utiliza para seleccionar una función de paso entre stepBackward y stepForward, dependiendo del valor de la variable value. Si value es mayor que 0, la función seleccionada será stepBackward, de lo contrario, será stepForward.*/
var value = 7
let moveNearZero = chooStepFuction(backward: value > 0) // Si (backward) es mayor a 0, sera `true`y contara hacia atras(stepbackward).

while value != 0 {
    print("\(value)...")
    value = moveNearZero(value)
}
print("Cero!!!!!")


// FUNCIONES ANIDADAS.

/*Una función anidada se refiere a una función que está definida dentro de otra función en un lenguaje de programación. En otras palabras, una función anidada está contenida dentro de otra función, lo que significa que la función interna solo es accesible y visible dentro del alcance de la función externa.*/
 
// Ejemplo poniendo como dato el codigo mas arriba declarado. 👇

func chooStepFuction2(backward: Bool ) -> (Int) -> Int {
    func stepForward2(_ input: Int) -> Int {
        return input + 1
    }
    
    func stepBackward2(_ input: Int) -> Int {
        return input - 1
    }
    return backward ? stepBackward : stepForward
}
