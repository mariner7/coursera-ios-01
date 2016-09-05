//: Playground - noun: a place where people can play

import UIKit

var meses = 1...12

for mes in meses{
    if mes == 1{
        print("Enero")
    }else if mes == 2{
        print("Febrero")
    }else{
        print("Mes \(mes)")
    }
}

//switch

for mesSwitch in meses{
    switch mesSwitch{
    case 1,2,3:
        print("Clima templado")
    case 4...7:
        print("Clima caluroso")
    default:
        print("No conozco el clima")
    }
}

//operadores condicionales

40 < 50
60 < 50
40 <= 50
40 >= 50
40 != 50
40 == 50

let peso = 60.0
let altura = 1.60
let imc = peso / (altura * altura)
