//: Mini Reto
/* Raúl Torres Duque Vázquez Aldana
 Swift: Programar para iOS
 Generar un rango de 0 a 100, inclusive
 Iterar el rango completo, utilizando for para obtener cada número del rango, aplicando las siguientes reglas:
 Si el número es divisible entre 5, imprime el número + "Bingo!!!"
 Si el número es par, imprime el número + "par!!!"
 Si el número es impar, imprime el número + "impar!!!"
 Si el número está dentro de un rango del 30 al 40, imprime el número + "Viva Swift!!!"

 Debes usar la interpolación de variables para realizar la impresión de cada número
*/

import UIKit

var numeros = 0...100

for n in numeros{
    if(n > 0){
        if (n >= 30 && n <= 40){
            print("\(n) Viva Swift!!!")
        }else if n % 5 == 0{
            print("\(n) Bingo!!!")
        }else if n % 2 == 0{
            print("\(n) par!!!")
        }else{
            print("\(n) impar!!!")
        }
    }
}
