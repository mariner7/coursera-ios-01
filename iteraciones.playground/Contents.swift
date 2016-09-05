//: Playground - noun: a place where people can play

import UIKit

var idiomas = ["español","inglés", "francés", "alemán", "italiano"]

for id in idiomas{
    print(id)
}

for i in 0...10{
    print(i)
}

for f in 0..<10{
    print(f)
}

var indice = 0
while indice < idiomas.count {
    print(idiomas[indice])
    indice += 1
}

indice = 0

repeat{
    print(idiomas[indice])
    indice += 1
}while indice < idiomas.count

for var i = 0; i < idiomas.count; i++ {
    print("\(i)\t\(idiomas[i])")
}

