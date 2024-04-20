import Foundation



for idx in 1...5 {   //Rango cerrado
    print(idx)
}

for idx in 1..<5 {  //Rango semiabierto o parciales
    print(idx)
}

//Ejemplos Rango semiabierto
let names = ["Ricardo", "Juan Gabriel", "Raúl"]
for i in 0..<names.count {
    print("La persona \(i+1) se llama \(names[i])")
}


for _ in names[1...]{
     print(names)
}


//Rango unilaterales
let range = ...5
range.contains(7)
range.contains(4)
range.contains(-2)



let numberOne = 10
let numberTwo = 20



//EJERCICIOS

//Me toma del primer valor hasta el último
let rangeOne = numberOne...numberTwo  //Incluye todo los rango
 
let rangeTwo = numberOne..<numberTwo  // No incluye el ulitmo
    rangeTwo.contains(20)

let rangeThree =  ...numberTwo   //Llega al último independiente del primero
    rangeThree.contains(-1)

let rangeFour = numberOne...   //Toma el primer valor hasta el infinito
rangeFour.contains(40)
