//MPOO 2025-1
//Autor: Yobel Dolores Zeferino
//License: MIT

import Foundation

class Inventario{
  var miInventario = [String:Int]()
  var llave:String
  var cantidadProducto:Int
  var eliminarLlave:String
  //var valorTemporal:Int
  var suma:Int

  init(){
    miInventario = ["CheetosFlamin":15,
                  "CheetosTorciditos":10,
                  "Sabritas de Sal":1,
                  "Sabritas Adobadas":6,
                  "Takis Fuego":50,
                  "Takis Guacamole":8,
                  "Chips Fuego":20,
                  "Gansito":9,
                  "Pinguinos":4,
                  "Donas de Azucar":5]
    llave = ""
    cantidadProducto = 0
    eliminarLlave = ""
    suma = 0
  }

  func verProductos(){
    print("Este es el inventario de productos")
    for (llave,valor) in miInventario{
      print("Producto: \(llave)---Cantidad:\(valor)")
    }
    print("\n")
  }

  func productoNuevo(){
    print("Se agregaran nuevos productos...")
    miInventario["Emperador"] = 10
    miInventario["Chokis"] = 4
    miInventario["Mamut"] = 9
    print("Se agregaron nuevos productos. Hechele un vistazo")
    for (llave,valor) in miInventario{
      print("Producto: \(llave)---Cantidad:\(valor)")
    }
    print("\n")
  }

  func masProducto(){
    print("A qué producto deseas agregar más stock")
    for (llave,valor) in miInventario{
      print("Producto: \(llave)---Cantidad:\(valor)")
    }
    print("Ingrese el nombre del producto en el teclado")
    llave = readLine()!

    print("Ingrese la cantidad que desea agregar")
    cantidadProducto = Int(readLine()!)!
    if let valorTemporal = miInventario[llave] {
      miInventario[llave] = valorTemporal + cantidadProducto
    }
    print("Cantidad agregada con exito. Verifiquelo")
    for (llave,valor) in miInventario{
      print("Producto: \(llave)---Cantidad:\(valor)")
    }
    print("\n")
  }

  func menosProducto(){
    print("A qué producto deseas restarlo stock")
    for (llave,valor) in miInventario{
      print("Producto: \(llave)---Cantidad:\(valor)")
    }
    print("Ingrese el nombre del producto en el teclado")
    llave = readLine()!
    print("Ingrese la cantidad que desea restar")
    cantidadProducto = Int(readLine()!)!
    if let valorTemporal = miInventario[llave] {
      miInventario[llave] = valorTemporal - cantidadProducto
    }
    print("Cantidad agregada con exito. Verifiquelo")
    for (llave,valor) in miInventario{
      print("Producto: \(llave)---Cantidad:\(valor)")
    }
    print("\n")
  }

  func eliminarProducto(){
      print("Del siguiente inventario, elija el producto que quiere eliminar e ingreselo en el teclado")

      for (llave,valor) in miInventario{
        print("Producto: \(llave)---Cantidad:\(valor)")
      }
      eliminarLlave=readLine()!
      miInventario.removeValue(forKey: eliminarLlave)
      print("\n")
      print("producto eliminado. Por favor verifique")
      for (llave,valor) in miInventario{
        print("Producto: \(llave)---Cantidad:\(valor)")
      }
  }

  func totalProductos(){
    for (i,valor) in miInventario{
      suma += valor
    }
    print("En el inventario hay un total de \(suma) productos")
  }


  /*func eliminarTodo(){
    print("Eliminando todos los productos del inventario...")
    miInventario.removeAll()
  }*/

}
var inventario = Inventario()
inventario.verProductos()
inventario.productoNuevo()
inventario.masProducto()
inventario.menosProducto()
inventario.eliminarProducto()
inventario.totalProductos()
