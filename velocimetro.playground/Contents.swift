//: Velocimetro

/* Raúl Torres Duque Vázquez Aldana
 Swift: Programar para iOS
 
 Declara la enumeración: Velocidades, sus valores serán de tipo Int.
 
 La enumeración Velocidades cuenta con los siguientes elementos y sus respectivos valores:
 
 - Apagado = 0, representa la velocidad 0.
 
 - VelocidadBaja = 20, representa una velocidad de 20km por hora.
 
 - VelocidadMedia = 50, representa una velocidad de 50km por hora
 
 - VelocidadAlta = 120, representa una velocidad de 50km por hora.
 
 - Además, debes de declarar un inicializador que recibe un velocidad:
 
 - init( velocidadInicial : Velocidades )
 
 - El inicializador se debe asignar a self el valor de velocidadInicial
 
 Declara la clase: Auto
 
 La clase Auto tiene los siguientes atributos:
 
 - Una variable que sea una instancia de la enumeración Velocidades, llamada: velocidad.
 
 Las funciones o métodos que define la clase Auto son las siguientes:
 
 - init( ), agrega la función inicializadora que crea una instancia de Velocidades: velocidad, debe iniciar en Apagado. Recuerda que la enumeración tiene su función inicializadora.
 
 - func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String), la función cambioDeVelocidad, cambia el valor de velocidad a la siguiente velocidad gradual, por ejemplo: Apagado cambia a VelocidadBaja, de VelocidadBaja cambia a VelocidadMedia, es decir cada ejecución cambia a la siguiente velocidad.. si llega a VelocidadAlta cambia a VelocidadMedia. Finalmente, la función debe regresar una tupla con la velocidad actual y una cadena con la leyenda de la velocidad correspondiente.
 
 Pruebas de la clase:
 
 - En el mismo playground prueba crea una instancia de la clase Auto, llamada auto.
 
 - Itera 20 veces usando un for, llama a la función cambioDeVelocidad e imprime los valores de la tupla en la consola.
 
 - Una salida válida con cinco iteraciones es:
 
 0 , Apagado
 
 20, Velocidad baja
 
 50, Velocidad media
 
 120, Velocidad alta
 
 50, Velocidad media
 
 120, Velocidad alta
 
 50, Velocidad media
 
 120, Velocidad alta
 
 50, Velocidad media
 

 */

import UIKit

class Auto{
    var velocidad : Velocidades
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        var velocidadDescripcion : String
        let actual = velocidad.rawValue
        switch velocidad {
        case .Apagado:
            velocidadDescripcion = "Apagado"
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidadDescripcion = "Velocidad Baja"
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidadDescripcion = "Velocidad Media"
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidadDescripcion = "Velocidad Alta"
            velocidad = .VelocidadMedia
        }
        return (actual, velocidadDescripcion)
    }
}

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}


var count = 1...20

var velocimetro = Auto()

for iteracion in count{
    let result = velocimetro.cambioDeVelocidad()
    print("\(result.actual), \(result.velocidadEnCadena)")
}
