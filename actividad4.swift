//MPOO 2025-1
//Autor: Yobel Dolores Zeferino
//Licence MIT
import Foundation

class Directorio{
    var amigo1=[String:String]()
    var amigo2=[String:String]()
    var amigo3=[String:String]()
    var amigo4=[String:String]()

    init(){
        amigo1 = ["nombre":"","direccion":"","correo":"","numero":""]
        amigo2 = ["nombre":"","direccion":"","correo":"","numero":""]
        amigo3 = ["nombre":"","direccion":"","correo":"","numero":""]
        amigo4 = ["nombre":"","direccion":"","correo":"","numero":""]
    }

    func agregarAmigo(){
        print("Agrega los datos del primer amigo a través del teclado")
        for (llave1,valor1) in amigo1{
           print("ingresa \(llave1):")
           amigo1[llave1]=readLine()!
       }
        print("amigo agregrado con exito\n")

        print("Agrega los datos del segundo amigo a través del teclado")
        for (llave1,valor1) in amigo2{
           print("ingresa \(llave1):")
           amigo2[llave1]=readLine()!
       }
        print("amigo agregrado con exito\n")

        print("Agrega los datos del tercer amigo a través del teclado")
        for (llave1,valor1) in amigo3{
           print("ingresa \(llave1):")
           amigo3[llave1]=readLine()!
       }
        print("amigo agregrado con exito\n")

        print("Agrega los datos del cuarto amigo a través del teclado")
        for (llave1,valor1) in amigo4{
           print("ingresa \(llave1):")
           amigo4[llave1]=readLine()!
       }
        print("amigo agregrado con exito\n")
    }

    func modificarAmigo(){
        print("¿Desea modificar los datos de algún amigo?")
        print("1-Si")
        print("2-No")
        var opc = Int(readLine()!)!
        if opc==1{
            print("A cuál elija una opción de los que se muestran a continuación")
            print("1-amigo1")
            print("2-amigo2")
            print("3-amigo3")
            print("4-amigo4")
            var opc2 = Int(readLine()!)!
            if opc2==1{
                print("ingrese nuevo correo")
                amigo1["correo"] = readLine()!
                print("ingrese nuevo teléfono")
                amigo1["numero"] = readLine()!
                print("Datos actualizados")
                for (llave1,valor1) in amigo1{
                    print("\(llave1): \(valor1)")
                }
                print("\n")
            }else if opc2==2{
                print("ingrese nuevo correo")
                amigo2["correo"] = readLine()!
                print("ingrese nuevo teléfono")
                amigo2["numero"] = readLine()!
                print("Datos actualizados")
                for (llave1,valor1) in amigo2{
                    print("\(llave1): \(valor1)")
                }
                print("\n")
            }else if opc2==3{
                print("ingrese nuevo correo")
                amigo3["correo"] = readLine()!
                print("ingrese nuevo teléfono")
                amigo3["numero"] = readLine()!
                print("Datos actualizados")
                for (llave1,valor1) in amigo3{
                    print("\(llave1): \(valor1)")
                }
                print("\n")
            }else if opc2==4{
                print("ingrese nuevo correo")
                amigo4["correo"] = readLine()!
                print("ingrese nuevo teléfono")
                amigo4["numero"] = readLine()!
                print("Datos actualizados")
                for (llave1,valor1) in amigo4{
                    print("\(llave1): \(valor1)")
                }
                print("\n")
            }
        }else{
            print("Datos no modificados")
        }
    }

    func eliminarAmigo(){
        print("¿Desea eliminar algún amigo?")
        print("1-Si")
        print("2-No")
        let opc = Int(readLine()!)!
        if opc==1{
            print("¿A cuál de los siguientes amigos desea eliminar?")
            print("1-amigo1")
            print("2-amigo2")
            print("3-amigo3")
            print("4-amigo4")
            let opc2 = Int(readLine()!)!
            if opc2==1{
                amigo1.removeAll()
                print("amigo eliminado")
            }else if opc2==2{
                amigo2.removeAll()
                print("amigo eliminado")
            }else if opc2==3{
                amigo3.removeAll()
                print("amigo eliminado")
            }else if opc2==4{
                amigo4.removeAll()
                print("amigo eliminado")
            }
        }else{
            print("No se eliminó a ningun amigo")
        }
    }

   func mostrarAmigos(){
       print("Este es tu directorio de amigos:")
       for (llave1,valor1) in amigo1{
           print("\(llave1): \(valor1)")
       }
       print("\n")
       for (llave1,valor1) in amigo2{
           print("\(llave1): \(valor1)")
       }
       print("\n")
       for (llave1,valor1) in amigo3{
           print("\(llave1): \(valor1)")
       }
       print("\n")
       for (llave1,valor1) in amigo4{
           print("\(llave1): \(valor1)")
       }
   }
}

var directorio1 = Directorio()
directorio1.agregarAmigo()
directorio1.mostrarAmigos()
directorio1.modificarAmigo()
directorio1.eliminarAmigo()
directorio1.mostrarAmigos()
