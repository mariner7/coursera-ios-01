//: Playground - noun: a place where people can play
//Arreglos

import UIKit

var explicito :[Int] = [1,2,3,4,5]
var idiomas = ["español","inglés", "frncés", "alemán", "italiano"]
idiomas[2] = "francés"
idiomas
idiomas.count
idiomas.append("chino mandarin")
idiomas.count
idiomas.insert("maori",atIndex: 2)
idiomas += ["portugués","sueco"]
idiomas.removeAtIndex(2)
idiomas.sort()

//Diccionarios

var idiomaDic = ["es":"español","en":"inglés","fr":"francés","de":"alemán","it":"italiano"]
idiomaDic["de"]
idiomaDic["cn"]
idiomaDic["cn"] = "chino"
idiomaDic
idiomaDic.count
