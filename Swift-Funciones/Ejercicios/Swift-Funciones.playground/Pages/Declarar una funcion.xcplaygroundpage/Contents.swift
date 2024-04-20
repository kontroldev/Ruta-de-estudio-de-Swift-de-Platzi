   import Foundation

/*func greeting(person: String) -> String {       //Puedes hacer un ejercicio de cambia algo aqui para que quede repercutido mas abajo cuando haces llamar a la funcion.
    let greet = "Hola, \(person)"             // "Bienvenido \(persona)"
    return greet
}*/

func greeting(person: String) -> String {  //En este ejemplo, la función "greeting" tiene un argumento llamado "person" de tipo String.
    let greeting = "Hello, " + person + "!"     // SE PUEDE HACER DE VARIAS MANERAS!!!
    return greeting
}

greeting(person: "Ricardo Celis")  //Los nombres serian el argumento
greeting(person: "Edgar")
greeting(person: "Juan Gabriel")


/* func greeting(person: String) -> String {
   ⬆️      ⬆️         ⬆️                 ↖️
Funcion - nombre - Parametros de entrada - parametros de salida
 
 let greet = "Hola, \(person)"  ⬅️
 return greet              ⬅️     Estas dos lineas seria el cuerpo
}*/
  

/* Que es una Funcion(Func)
 es una porción de código que realiza una tarea específica y puede ser llamada o invocada desde otras partes del programa.
 Las funciones en Swift permiten organizar el código en bloques lógicos y reutilizables, lo que facilita el mantenimiento y la legibilidad del código.*/
