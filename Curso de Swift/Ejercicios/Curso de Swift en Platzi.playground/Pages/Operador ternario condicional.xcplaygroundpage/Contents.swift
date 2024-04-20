import Foundation

/*
 SI pregunta{
   respuesta1
 }si es falso la pregunta1{
 respuesta2
 }
-----------------------------------------
 
 if question1 {
    answer1
 }else {
    answer2
 }
 */


let contentHeight = 40
var hasImage = true
var rowHeight = 0
if hasImage {
    rowHeight = contentHeight + 50
}else{
    rowHeight = contentHeight + 10
}

//Hacerlo de otra manera mas profesional👇

rowHeight = contentHeight + (hasImage ? 50 : 10)
