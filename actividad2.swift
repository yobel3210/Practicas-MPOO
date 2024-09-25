//MPOO 2025-1
//Autor: Yobel Dolores Zeferino
//License: MIT
//---25/09/2024
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
      var key=value
      var j=i-1
      while j>=0 && key>calificaciones[j]{
        calificaciones[j+1]=calificaciones[j]
        j -= 1
        calificaciones[j+1] = key
      }
    }
    for (i,value) in calificaciones.enumerated(){
      print("Calificacion \(i+1): \(value)")
    }
    print("------------------------------------\n")
  }

  func calcularPromedio(){
    suma=0.0
    for i in calificaciones{
      suma+=i
    }
    promedio=suma/Double(calificaciones.count)
    print("El promedio es: \(promedio)")
    if promedio >= 0 && promedio < 6{
      print("Hechale más ganas")
    }else if promedio >= 6 && promedio < 7{
      print("Alumno regular")
    }else if promedio >= 7 && promedio < 8{
      print("Buen alumno")
    }else if promedio >= 8 && promedio < 9{
      print("Muy buen alumno")
    }else if promedio >= 9 && promedio < 10{
      print("Excelente Alumno")
    }else if promedio == 10{
      print("Alumno ejemplar")
    }
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

  func modificarCalificacion(){
    print("¿Cuántas calificaciones deseas corregir?")
    guard let numeroIngresado = Int(readLine()!) else{
      print("Entrada invalida")
      return
    }
    for i in 0...numeroIngresado-1{
      print("Estas son las calificaciones:")
      for (key,value) in calificaciones.enumerated(){
        print("Calificación \(key+1): \(value)")
      }
      print("Ingrese en el teclado el número de la calificación a modificar")
      guard let aux = Int(readLine()!) else{
        print("Entrada invalida")
        return
      }
      print("Ingrese la nueva calificación")
      guard let nuevaCal = Double(readLine()!) else{
        print("Entrada invalida")
        return
      }
      calificaciones[aux-1] = Double(nuevaCal)
      print("Calificación modificada")
    }
  }

  func eliminarCalificacion(){
    print("¿Cuántas calificaciones deseas eliminar?")
    guard let numeroIngresado = Int(readLine()!) else{
      print("Entrada invalida")
      return
    }
    for i in 0...numeroIngresado-1{
      print("Estas son las calificaciones:")
      for (key,value) in calificaciones.enumerated(){
        print("Calificación \(key+1): \(value)")
      }
      print("ingrese el número de la calificación a eliminar")
      guard let numIngresado = Int(readLine()!) else{
        print("Entrada invalida")
        return
      }
      calificaciones.remove(at: numIngresado-1)
    }
  }

}

var opc = 0
var calificaciones1 = Promedio()


repeat{
  print("Menú de opciones \n¿Qué desea realizar?")
  print("1-Agregar calificaciones")
  print("2-Mostrar calificaciones")
  print("3-Calcular promedio")
  print("4-Mostrar calificaciones aprobatorias y reprobatorias")
  print("5-Corregir calificación")
  print("6-Eliminar calificación")
  print("7-Salir")
  opc = Int(readLine()!)!

  switch opc{
    case 1:
      calificaciones1.agregarCalificaciones()
    case 2:
      calificaciones1.mostrarCalificaciones()
    case 3:
      calificaciones1.calcularPromedio()
    case 4:
      calificaciones1.calificacionAprobada()
    case 5:
      calificaciones1.modificarCalificacion()
    case 6:
      calificaciones1.eliminarCalificacion()
    case 7:
      print("Saliendo...\n Hasta pronto")
    default:
      print("Entrada invalida")
  }
} while opc != 7
