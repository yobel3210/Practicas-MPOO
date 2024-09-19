//MPOO 2025-1
//Autor: Yobel Dolores Zeferino
//License: MIT
import Foundation

class Promedio{
  var calificaciones=[Double]()
  var calificacionesReprobatorias=[Double]()
  var calificacionesAprobatorias=[Double]()
  var promedio:Double
  var suma:Double

  init(){
    promedio=0.0
    suma=0.0
  }

  func agregarCalificaciones(){
    for i in 0...9{
      print("Ingrese calificacion \(i+1):")
      calificaciones.append(Double(readLine()!)!)
    }
    print("------------------------------------\n")
  }

  func mostrarCalificaciones(){
    for (i,value) in calificaciones.enumerated(){
      print("Calificacion \(i+1): \(value)")
    }
    print("------------------------------------\n")
  }

  func calcularPromedio(){
    for i in calificaciones{
      suma+=i
    }
    promedio=suma/Double(calificaciones.count)
    print("El promedio es: \(promedio)")
    print("------------------------------------\n")
  }

  func calificacionAprobada(){
    for i in calificaciones{
      if case 0...6 = i{
        calificacionesReprobatorias.append(i)
      }else if case 6.1...10 = i{
        calificacionesAprobatorias.append(i)
      }
    }
    print("Son \(calificacionesAprobatorias.count) las calificaciones aprobatorias las cuales se muestran a continuación:")
    print(calificacionesAprobatorias)
    print("----------------------------------------------------------------------------\n")
    print("Son \(calificacionesReprobatorias.count) las calificaciones reprobatorias las cuales se muestran a continuación:")
    print(calificacionesReprobatorias)
    print("----------------------------------------------------------------------------\n")
  }

  func numerosParesImpares(){
    var pares=[Double]()
    var impares=[Double]()
    var numeroEntero=0
    for (i,value) in calificaciones.enumerated(){
      numeroEntero=Int(value)
      var resto=numeroEntero%2
      if resto == 0{
        pares.append(value)
      }else if resto != 0{
        impares.append(value)
      }
    }
    print("Ignorando los decimales de cada calificacion dada.")
    print("Las calificaciones que se muestran a continuación son pares:")
    print(pares)
    print("----------------------------------------\n")
    print("Las calificaciones que se muestran a continuación son impares:")
    print(impares)
    print("----------------------------------------\n")
  }
}

var calificaciones1 = Promedio()
calificaciones1.agregarCalificaciones()
calificaciones1.mostrarCalificaciones()
calificaciones1.calcularPromedio()
calificaciones1.calificacionAprobada()
calificaciones1.numerosParesImpares()
