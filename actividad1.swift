//MPOO 2025-1
//Autor: Yobel Dolores Zeferino
//License: MIT
//-----------------------------------------
import Foundation

class Temperatura{
    var temperatura=[Double]()
    var temperaturaMayor:Double
    var temperaturaMenor:Double

    init(){
        temperaturaMayor=0.0
        temperaturaMenor=0.0

    }

    func ingresarTemperaturas(){
        for i in 0...9{
            print("Ingrese la temperatura \(i+1)")
            let temp=Double(readLine()!)!
            temperatura.append(temp)
        }
    }

    func mayorTemperatura(){
        temperaturaMayor=temperatura[1]
        for i in 0...9{
            if temperatura[i]>=temperaturaMayor{
                temperaturaMayor=temperatura[i]
            }
        }
        print("La mayor temperatura registrada es de \(temperaturaMayor)° celcius")
    }
    func menorTemperatura(){
        temperaturaMenor=temperatura[1]
        for i in 0...9{
            if temperatura[i]<=temperaturaMenor{
                temperaturaMenor=temperatura[i]
            }
        }
        print("La menor temperatura registrada es de \(temperaturaMenor)° celcius")
    }

    func verTemperaturas(){
        for (i,valor) in temperatura.enumerated(){
            print("temperatura \(i): \(valor)° Celcius")
        }
    }

}
var temperaturas1 = Temperatura()
temperaturas1.ingresarTemperaturas()
temperaturas1.verTemperaturas()
temperaturas1.mayorTemperatura()
temperaturas1.menorTemperatura()
