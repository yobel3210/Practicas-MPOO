//MPOO 2025-1
//Autor: Yobel Dolores Zeferino
//Fecha: 18/09/25
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
          "Cheetos Flamin Hot":15,
          "Cheetos Torciditos":10,
          "Sabritas de Sal":1,
          "Sabritas Adobadas":6,
          "Takis Fuego":50,
          "Takis Guacamole":8,
          "Chips Fuego":20,
          "Gansito":9,
          "Pinguinos":4,
          "Donas de Azucar":5
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
    guard let valorIngresado=readLine(),let numero=Int(valorIngresado),(numero<=50) else{
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
    inventario.removeValue(forKey: producto)
    print("Producto eliminado con exito\n")
  }

  func totalProductos(){
    for (_,value) in inventario{
      suma += value
    }
    print("En el inventario hay \(suma) de stock de productos")
    print("------------------------------------------------------------------------------------")
  }

}

var tiendaTresB = Inventario()
tiendaTresB.verInventario()
tiendaTresB.totalProductos()
tiendaTresB.masProducto()
tiendaTresB.menosProducto()
tiendaTresB.verInventario()
tiendaTresB.nuevoProducto()
tiendaTresB.eliminarProducto()
tiendaTresB.verInventario()
tiendaTresB.totalProductos()
