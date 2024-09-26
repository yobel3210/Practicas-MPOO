//MPOO 2025-1
//Autor: Yobel Dolores Zeferino
//Fecha: 25/09/24
//License: MIT

import Foundation

class Inventario{
  var inventario = [String:Int]()
  var suma:Int
  var diferencia:Int
  var eliminarLlave:String
  var numero:Int
  var producto:String

  init(){
    suma = 0
    eliminarLlave = ""
    numero = 0
    diferencia = 0
    producto = ""
    inventario = [
          "Cheetos Flamin Hot":0,
          "Cheetos Torciditos":0,
          "Sabritas de Sal":0,
          "Sabritas Adobadas":0,
          "Takis Fuego":0,
          "Takis Guacamole":0,
          "Chips Fuego":0,
          "Gansito":0,
          "Pinguinos":0,
          "Donas de Azucar":0
    ]
  }

  func masProducto(){
    print("Del siguiente inventario:")
    for (key,value) in inventario{
      print("\(key):\(value)")
    }
    print("\nIngrese el nombre del producto que desea agregar mas stock...")
    guard let producto=readLine(),
    inventario.keys.contains(producto) else{
      print("El producto no existe en el inventario\n")
      return
    }
    print("Ingrese la cantidad de stock que desea agregar a ese producto...")
    guard let valorIngresado=readLine(),let numero=Int(valorIngresado) else{
      print("Entrada inválida")
      return
    }
    suma = inventario[producto]! + numero
    if suma <= 50{
      inventario[producto] = suma
      print("Stock de producto agregada con exito\n")
    }else{
      print("El stock máximo de cada producto es de 50")
      var maxCantidad = 50 - inventario[producto]!
      print("La cantidad máxima de stock que puedes agregar es \(maxCantidad)\n")
    }
    print("------------------------------------------------------------------------------------")
  }

  func menosProducto(){
    print("Del siguiente inventario:")
    for (key,value) in inventario{
      print("\(key): \(value)")
    }
    print("\nIngrese el nombre del producto que desea quitar stock...")
    guard let producto=readLine(),
    inventario.keys.contains(producto) else{
      print("El producto no existe en el inventario\n")
      return
    }
    print("Ingrese la cantidad de stock que desea quitar a ese producto...")
    guard let valorIngresado=readLine(),let numero=Int(valorIngresado) else{
      print("Entrada inválida")
      return
    }
    diferencia = inventario[producto]! - numero
    if diferencia >= 0{
      inventario[producto] = diferencia
      print("Stock de producto reducida con exito \n")
    }else{
      print("El maximo producto que puedes quitar es \(inventario[producto]!)\n")
    }
    print("------------------------------------------------------------------------------------")
  }

  func verInventario(){
    print("Esto es lo que hay en el inventario:")
    for (key,value) in inventario{
      print("\(key): \(value)")
    }
    print("------------------------------------------------------------------------------------")
  }

  func nuevoProducto(){
    print("Ingrese el nombre del producto que desea agregar al inventario...")
    producto = readLine()!
    let resultado = inventario.keys.contains(producto)
    if resultado == true{
      print("El producto ya existe en el inventario\n")
    }
    print("Ingresa la cantidad de stock de ese producto...")
    guard let cantidadIngresada=readLine(), let numero=Int(cantidadIngresada) else{
      print("Entrada invalida")
      return
    }
    inventario[producto] = numero
    print("Producto agregado con exito")
    print("------------------------------------------------------------------------------------")
  }

  func eliminarProducto(){
    print("\nDel siguiente inventario:")
    for (key,value) in inventario{
      print("\(key): \(value)")
    }

    print("Ingresa el nombre del producto que desea eliminar.")
    guard let producto=readLine(),inventario.keys.contains(producto) else{
      print("El producto no existe en el inventario\n")
      return
    }
    print("¿Seguro de que quiere eliminar el producto?")
    print("1-Si\n2-No")
    let opc = readLine()
    if opc == "1"{
      inventario.removeValue(forKey: producto)
      print("Producto eliminado con exito\n")
    }else{
      print("El producto no se eliminará")
    }
  }

  func totalProductos(){
    for (_,value) in inventario{
      suma += value
    }
    print("En el inventario hay \(suma) de stock de productos")
    print("------------------------------------------------------------------------------------")
  }

}

var opc = ""
var tiendaTresB = Inventario()

repeat{
  print("Menú del Invetario de la Tienda Tres B")
  print("Qué desea realizar.")
  print("A-Añadir stock")
  print("B-Quitar stock")
  print("C-Nuevo producto")
  print("D-Mostrar productos")
  print("E-Eliminar producto")
  print("F-Salir")

  opc = readLine()!
  switch opc{
    case "A","a":
      tiendaTresB.masProducto()
    case "B","b":
      tiendaTresB.menosProducto()
    case "C","c":
      tiendaTresB.nuevoProducto()
    case "D","d":
      tiendaTresB.verInventario()
    case "E","e":
      tiendaTresB.eliminarProducto()
    case "F","f":
      print("Saliendo del inventario...\nHasta pronto.")
    default:
      print("Entrada invalida")
  }
}while opc != "F" && opc != "f"
