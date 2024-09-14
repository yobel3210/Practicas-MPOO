//MPOO 2025-1
//Autor: Yobel Dolores Zeferino
//License: MIT
//-----------------------------------------
import Foundation

class EvaluarNumeros{
  var arregloNumeros=[Int]()
  var arregloPares=[Int]()
  var arregloImpares=[Int]()
  var arregloAbsolutos=[Int]()
  var arregloAbsolutos2=[Int]()
  var resto:Int
  var numero:Int

  init(){
    resto=0
    numero=0
  }

  func obtenerArregloDeNumeros(){
    print("Ingrese 15 números enteros en en teclado")
    for i in 0...14{
      print("ingrese el numero \(i+1):")
      numero=Int(readLine()!)!
      arregloNumeros.append(numero)
    }
  }

  func verArregloNumeros(){
    print("los numeros que se ingresaron son:")
    for (i,value) in arregloNumeros.enumerated(){
      print("Numero \(i+1): \(value)")
    }
    print("-------------------------------")
    print("\n")
  }

  func numerosPares(){
    for i in 0...14{
      resto=arregloNumeros[i]%2
      if resto==0{
        arregloPares.append(arregloNumeros[i])
      }
    }
    print("Los numeros pares del arreglo dado son:")
    print(arregloPares)
    print("\n")
  }

  func numerosImpares(){
    for i in 0...14{
      resto=arregloNumeros[i]%2
      if resto != 0 {
        arregloImpares.append(arregloNumeros[i])
      }
    }
    print("Los numeros impares del arreglo dado son:")
    print(arregloImpares)
  }

  func numerosAbsolutos(){
    print("Los valores absolutos de los números dados son:")
    for i in 0...14{
      arregloAbsolutos.append(abs(arregloNumeros[i]))
    }
    for (i,value) in arregloAbsolutos.enumerated(){
      print("Numero \(i+1): \(value)")
    }
    print("-------------------------------")
    print("\n")
  }

}

var miArreglo1=EvaluarNumeros()
miArreglo1.obtenerArregloDeNumeros()
miArreglo1.verArregloNumeros()
miArreglo1.numerosAbsolutos()
miArreglo1.numerosPares()
miArreglo1.numerosImpares()
