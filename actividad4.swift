//MPOO 2025-1
//Autor: Yobel Dolores Zeferino
//Fecha: 17/09/25
//License: MIT

import Foundation

class Edad {
    var edadPersona = [Int:Int]()
    var generoPersona = [Int:String]()
    var mayorTipoDePersonas = [String:Int]()
    var menorTipoDePersonas = [String:Int]()
    var totalGenero = [String:Int]()
    var tipoDePersona: [String:Int] = ["Niños": 0,
                                        "Adolescentes": 0,
                                        "Adultos Jovenes": 0,
                                        "Adultos": 0,
                                        "Adultos mayores": 0]

    func obtenerEdad() {
        for i in 0...19{
            print("Ingrese en el teclado si la persona es hombre o mujer")
            guard let generoDePersona = readLine(),
                (generoDePersona == "hombre" || generoDePersona == "mujer") else {
                print("Entrada inválida")
                continue
            }
            generoPersona[i + 1] = generoDePersona

            print("Ingresa la edad de la persona")
            guard let edadIngresada = readLine(), let edadDePersona = Int(edadIngresada) else {
                print("Entrada inválida")
                continue
            }
            edadPersona[i + 1] = edadDePersona
        }
    }

    func clasificarEdad() {
        for (_, value) in edadPersona {
            if case 0...12 = value {
                tipoDePersona["Niños"]! += 1
            } else if case 13...18 = value {
                tipoDePersona["Adolescentes"]! += 1
            } else if case 19...28 = value {
                tipoDePersona["Adultos Jovenes"]! += 1
            } else if case 29...50 = value {
                tipoDePersona["Adultos"]! += 1
            } else if case 51... = value {
                tipoDePersona["Adultos mayores"]! += 1
            }
        }
    }

    func clasificacionDeGenero(){
        for (_, value) in generoPersona{
            if value == "hombre"{
                totalGenero["hombre", default: 0] += 1
            } else if value == "mujer" {
                totalGenero["mujer", default: 0] += 1
            }
        }
    }

    func mayorTipo(){
        var mayor = 0
        var menor = 200
        //var menor = Int.max
        var aux1 = ""
        var aux2 = ""

        for (key, value) in tipoDePersona{
            if value >= mayor {
                mayor = value
                aux1 = key
            }
            if value <= menor {
                menor = value
                aux2 = key
            }
        }
        mayorTipoDePersonas[aux1] = mayor
        menorTipoDePersonas[aux2] = menor
    }

    func mostrarEdad(){
        print("De la lista de personas dadas hay:")
        for (key, value) in tipoDePersona{
            print("\(value) \(key)")
        }
        print("----------------------------------------------------------------------------------------------\n")
    }

    func mostrarGenero(){
        print("De la lista de personas dadas hay un total de:")
        for (key, value) in totalGenero{
            print("\(value) \(key)")
        }
        print("----------------------------------------------------------------------------------------------\n")
    }

    func mostrarTipo(){
        if let primerPar = mayorTipoDePersonas.first{
            print("De la lista dada hay un mayor número de \(primerPar.key) con un total de: \(primerPar.value)")
        }
        for (key, value) in menorTipoDePersonas {
            print("De la lista de personas hay menor número de \(key) con un total de \(value)")
        }
        print("---------------------------------------------------------------------------------------\n")
    }
}

var listaDeEdades1 = Edad()
listaDeEdades1.obtenerEdad()
listaDeEdades1.clasificarEdad()
listaDeEdades1.clasificacionDeGenero()
listaDeEdades1.mayorTipo()
listaDeEdades1.mostrarEdad()
listaDeEdades1.mostrarGenero()
listaDeEdades1.mostrarTipo()
