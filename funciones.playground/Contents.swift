//: funciones

import UIKit

func calcularIndiceMasaCorporal(pesoNeto peso: Double, altura : Double) -> (imcCalculado : Double, mensajeDeSalida : String){
    let imc = peso / ((altura * altura))
    var mensaje = ""
    if(imc > 18.5 && imc < 25.0){
        mensaje = "Peso normal"
    }else{
        mensaje = "Debes acudir con tu médico"
    }
    let resultado = (imc, mensaje)  //: tuplas
    return resultado
}


var (imc, mensaje) = calcularIndiceMasaCorporal(pesoNeto : 60.0, altura: 1.60)

print(imc)

print(calcularIndiceMasaCorporal(pesoNeto : 80.0, altura: 1.88))

imc
mensaje

let imcTupla = calcularIndiceMasaCorporal(pesoNeto : 70.0, altura: 1.6)
imcTupla.imcCalculado
imcTupla.mensajeDeSalida

let tupla = (nombre: "Marco", peso : 70.6, altura : 1.9)

tupla.nombre
tupla.altura
tupla.0
tupla.2
let (nom,_,alt) = tupla



