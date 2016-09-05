//: valores asociados

import UIKit

enum LecturaDeDatos{
    case Digitos(Int, Int, Int)
    case QrCodigo(String)
}

var entradaDeDatos = LecturaDeDatos.Digitos(3, 4, 5)

entradaDeDatos = .QrCodigo("AAACCCDDD")

switch entradaDeDatos{
case .Digitos(let uno, let dos, let tres):
    print("\(uno) \(dos) \(tres)")
case .QrCodigo(let qr):
    print(qr)
}

enum Tipos : String{
    case Ligero = "sin cafeina", Medio = "Del mediterraneo"
}
let ver = Tipos.Ligero
ver.rawValue
