//MPOO 2025-1
//Autor: Yobel Dolores Zeferino
//License: MIT
//-----------------------------------------
import Foundation

class Temperatura{
  var temperatura=[Int]()
  var temperaturasPares=[Int]()
  var temperaturasImpares=[Int]()
  var fahrenheit=[Double]()
  var kelvin=[Double]()
  var temperaturaMayor:Int
  var temperaturaMenor:Int

  init(){
      temperaturaMayor=0
      temperaturaMenor=0

  }

  func ingresarTemperaturas(){
      for i in 0...9{
          print("Ingrese la temperatura \(i+1)")
          let temp=Int(readLine()!)!
          temperatura.append(temp)
      }
    print("---------------------------------------\n")
  }

  func mayorTemperatura(){
      temperaturaMayor=temperatura[1]
      for (i,_) in temperatura.enumerated(){
          if temperatura[i]>=temperaturaMayor{
              temperaturaMayor=temperatura[i]
          }
      }
      print("La mayor temperatura registrada es de \(temperaturaMayor)° celcius")
    print("------------------------------------------------------------------\n")
  }

  func menorTemperatura(){
      temperaturaMenor=temperatura[1]
      for (i,_) in temperatura.enumerated(){
          if temperatura[i]<=temperaturaMenor{
              temperaturaMenor=temperatura[i]
          }
      }
      print("La menor temperatura registrada es de \(temperaturaMenor)° celcius")
    print("------------------------------------------------------------------\n")
  }

  func verTemperaturas(){
      for (i,value) in temperatura.enumerated(){
        var key=value
        var j=i-1
        while j>=0 && key>temperatura[j]{
          temperatura[j+1]=temperatura[j]
          j -= 1
          temperatura[j+1] = key
        }
      }
      for (i,valor) in temperatura.enumerated(){
          print("temperatura \(i): \(valor)° Celcius")
      }
    print("---------------------------------------\n")
  }
 /* 12 def insertionsort(A):
  13 for i in range(1, len(A)):
  14 key = A[i]
  15 j = i-1
  16 while j >= 0 and A[j] > key:
  17 A[j+1] = A[j]
  18 j-=1
  19 A[j+1] = key
  20 # end def*/

  func eliminarTemperatura(){
      print("¿Está seguro que desea eliminar alguna temperatura?")
      print("1-Si\n2-No")
      var opcion = readLine()
      if opcion == "1"{
          print("¿Cuantas temperaturas deseas eliminar?")
          var opc2 = Int(readLine()!)!
          for i in 0...opc2-1{
              print("Estas son las temperaturas:")
              for (i,value) in temperatura.enumerated(){
                  print("temperatura \(i+1):\(value)")
              }
              print("ingrese el número de temperatura que desea eliminar")
              var opc3 = Int(readLine()!)!
              temperatura.remove(at: opc3-1)

          }
      }
    print("-----------------------------\n")
  }

  func paresImpares(){
    for (i,value) in temperatura.enumerated(){
      if value%2==0{
        temperaturasPares.append(value)
      }else{
        temperaturasImpares.append(value)
      }
    }
    print("Las temperaturas pares son:")
    print(temperaturasPares)
    print("\nLas temperaturas Impares son:")
    print(temperaturasImpares)
    print("-----------------------------\n")
  }

  func conversionDeTemperaturas(){
    for (i,value) in temperatura.enumerated(){
      let aux1=(Double(value)*1.8)+32
      let aux2=Double(value)+273.15
      fahrenheit.append(aux1)
      kelvin.append(aux2)
    }
    print("La conversión de las temperaturas de la escala Celsius a Fahrenheit son las siguientes:")
    for i in 0..<temperatura.count {
        print("\(temperatura[i])° Celsius = \(fahrenheit[i])° Fahrenheit")
    }
    print("------------------------------\n")
    print("La conversión de las temperaturas de la escala Celsius a Kelvin son las siguientes:")
    for i in 0..<temperatura.count {
        print("\(temperatura[i])° Celsius = \(kelvin[i])° Kelvin")
    }
    print("------------------------------\n")
  }

}

var opc=0

var temperaturas1 = Temperatura()

repeat{
  print("Menú de temperatura")
  print("1-ingresar temperaturas")
  print("2-mayor temperatura registrada")
  print("3-menor temperatura registrada")
  print("4-ver todas temperaturas")
  print("5-eliminar temperaturas")
  print("6-clasificar temperaturas")
  print("7-convertidor de temperaturas")
  print("8-salir")
  opc = Int(readLine()!)!

  switch opc{
  case 1:
      temperaturas1.ingresarTemperaturas()
  case 2:
      temperaturas1.mayorTemperatura()
  case 3:
      temperaturas1.menorTemperatura()
  case 4:
      temperaturas1.verTemperaturas()
  case 5:
      temperaturas1.eliminarTemperatura()
  case 6:
      temperaturas1.paresImpares()
  case 7:
      temperaturas1.conversionDeTemperaturas()
  default:
      print("")
  }

}while opc != 8
