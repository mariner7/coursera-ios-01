//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 -- Preconditions:
 Programa un playground que evalÃºe un rango de nÃºmeros en base a 4 reglas de impresiÃ³n.
 Generar un rango de 0 a 100, incluye el nÃºmero 100 en el rango.
 Tienes que iterar el rango completo, utilizando la sentencia for para obtener cada nÃºmero del rango y aplicar las siguientes reglas de impresiÃ³n.
 -- Postconditions:
 Al evaluar cada nÃºmero debes aplicar las siguientes reglas:
 - Si el nÃºmero es divisible entre 5, imprime: # el nÃºmero  + â€œBingo!!!â€
 - Si el nÃºmero es par, imprime: # el nÃºmero + â€œpar!!!â€
 - Si el nÃºmero es impar, imprime: # el nÃºmero + â€œimpar!!!â€
 - Si el nÃºmero se encuentra dentro de un rango del 30 al 40, imprime: # el nÃºmero +  â€œViva Swift!!!â€
 -- Requirements:
 Debes de usar la interpolaciÃ³n de variables para realizar la impresiÃ³n de cada nÃºmero.
 La salida de mensajes dejes tenerla en la consola.
 El proyecto deberÃ¡ estar en la cuenta de GitHub del alumno
 -- Review criteria:
 Â¿El playground se encuentra en GitHub?
 Â¿El playground estÃ¡ hecho en Swift?
 Â¿Se genera un rango de 0 a 100?
 Â¿Se utiliza un ciclo for para iterar los elementos del rango?
 Â¿Se aplica la regla: â€œSi el nÃºmero es divisible entre 5, imprime: # el nÃºmero  + â€œBingo!!!â€?
 Â¿Se aplica la regla: â€œSi el nÃºmero es par, imprime: # el nÃºmero + â€œpar!!!â€?
 Â¿Se aplica la regla: â€œSi el nÃºmero es impar, imprime: # el nÃºmero + â€œimpar!!!â€?
 Â¿Se aplica la regla: â€œSi el nÃºmero se encuentra dentro de un rango del 30 al 40, imprime: # el nÃºmero +  â€œViva Swift!!!â€?
 Â¿Se usa la interpolaciÃ³n de variables al imprimir las reglas?
 Â¿Se muestran los mensajes en la consola?
 */



for num in 0...100 {
    if num % 5 == 0 {
        print ("# \(num) Bingo!!!")
    }
    if num % 2 == 0 {
        print ("# \(num) par!!!")
    }else {
        print ("# \(num) impar!!!")
    }
    if num >= 30 && num <= 40 {
        print ("# \(num) Viva Swift!!!")
    }
}