//
//Materia: MPOO 2025-1
//Autor: Dolores Zeferino Yobel
//Licence: MIT

import Foundation

class Evaluar{
    var vector1=[Double]()
    var vector2 = [Double]()
    var vector3 = [Double]()
    var productoPunto:Double

    init(){
        productoPunto = 0.0
    }

    func obtenerVectores(){
        print("ingresa las componentes (x,y,z) del vector 1")
        for i in 1...3{
            print("ingresa la componente \(i)")
            vector1 += [Double(readLine()!)!]
        }
        print("V1 = \(vector1) \n")
        print("ingresa las componentes (x,y,z) del vector 2")
        for i in 1...3{
            print("ingresa la componente \(i)")
            vector2 += [Double(readLine()!)!]
        }
        print("V2 = \(vector2) \n")
    }

    func calcularProductoPunto(){
        for i in 0...2{
            vector3 += [vector1[i]*vector2[i]]
        }
        print("V3 = \(vector3)")
        for i in 0...2{
            productoPunto += vector3[i]
        }
        print("\u{2234} V1\u{00B7}V2 = \(productoPunto)")
    }

}

var calculo1 = Evaluar()
calculo1.obtenerVectores()
calculo1.calcularProductoPunto()
