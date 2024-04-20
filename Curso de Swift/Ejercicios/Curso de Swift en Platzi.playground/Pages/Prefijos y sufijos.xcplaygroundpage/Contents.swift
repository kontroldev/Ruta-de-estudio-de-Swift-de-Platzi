import Foundation

let newGreeting = "Hola, soy kontrol devs"

newGreeting.hasPrefix("Hola") //Con este comando podemos saber si empieza con cadena "Hola" y nos devuelve ( TRUE - FALSE)
newGreeting.hasSuffix("Adios") //Con este comando podemos saber si acaba la cadena con un "Adios"
newGreeting.hasSuffix("s")  //Con este comando podemos saber si acaba la cadena con un "S" sale TRUE



//EJERCICIOS
let collection = [
    "Act 1 Scene 1", "Act 1 Scene 2", "Act 1 Scene 3", "Act 1 Scene 4", "Act 1 Scene 5",
    "Act 2 Scene 1", "Act 2 Scene 2", "Act 2 Scene 3",
    "Act 3 Scene 1", "Act 3 Scene 1"
]

var act1SceneCount = 0
for scene in collection{
    if scene.hasPrefix("Act 1"){
            act1SceneCount += 1
    }
}
print("El numero de escenas del acto 1 es: \(act1SceneCount)")


/*  .hasPrefix() ➡️ Si empieza con un cadena
    .hasSuffix() ➡️ si finaliza con una cadena
*/
