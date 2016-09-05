//: opcionales

import UIKit

var numero : Int? = nil

numero = 5

if numero != nil{
    let numeroString : String = String(numero!) // (!) Bang
    let numeroOptional : String = String(numero)
    numeroString
    numeroOptional
}
