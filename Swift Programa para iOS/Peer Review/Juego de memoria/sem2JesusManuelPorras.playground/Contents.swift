//  Peer Graded Assignment: Juego de memoria
//  Curso: Swift: programar para iOS - Semana 2
//  Created by Jesus Manuel Porras Valdez on 8/17/16..

import UIKit

for i in 0...100 {                  //Iteración del 0 al 100 con ciclo for
    switch i {
    case _ where i % 5 == 0:        //Si es divisible entre 5, imprimir Bingo!!!
        print("\(i): Bingo!!!")
    case _ where i % 2 == 0:        //Si el número es par, imprime: # el número + “par!!!”
        print("\(i): par!!!")
    case 30...40:                   //Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
        print("\(i): Viva Swift!!!")
        
    default:                        //De lo contrario, el número es impar y se imprime: # el número + “impar!!!”
        print("\(i): Número impar!!!")
    }
}


