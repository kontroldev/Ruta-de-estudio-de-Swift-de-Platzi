import Foundation


//Operador NOT o !
let allowEntry = false

if !allowEntry{
    print("ACCESO DENEGADO")
}


//Operador AND o &&
let enterDoorCode = true
let passRetinaDSacn = false

if enterDoorCode && passRetinaDSacn {  // Compara las dos condiciones y se tiene que cumplir.
}else{
    print("ACCESO DENEGADO")
}


//Operador OR o ||
let hasMoney = true
let hasInvitation = false

if hasMoney || hasInvitation{  // Si una de las dos condiciones se cumpole      Para hacer el simbolo OR es Option + 1 = |
    print("Bienvenido a la fiesta")
}else{
    print("No eres bienvenido aqui")
}


if enterDoorCode && passRetinaDSacn || hasMoney || hasInvitation{  // Si se cumple y se cumple las dos es true. Y si se cumnple y otra no, sera True.   Esto tambien serie el algebra de bool.
    print("Has entrado")
}else{
    print("Acceso denegado")
}



//EJERCICIOS

let knowsHowToProgram = true
let knowSwiftLanguage = false
let knowsTheLangaugeJavascript = false
let haveAMac = true

if haveAMac && knowsHowToProgram || knowSwiftLanguage || knowsTheLangaugeJavascript{
    print ( "Puedes trabajar como  iOS Developer")
} else {
    print( "Necesita aprender a programar o comprar una Mac")
}
