import Foundation

class Promedio{
	var arregloCalificacion = [Double]()
	var sum:Double
	var promedioFinal:Double

    init(){
        sum = 0.0
        promedioFinal = 0.0
    }

	func agregarValores(){
    	var calificacion = 0.0
    	print("Ingresa la calificaciòn:")
    	calificacion = Double(readLine()!)!
    	arregloCalificacion.append(calificacion)
    	print("Calificaciòn agregada con exito")
	}

	func calcularPromedio(){
    	for elemento in arregloCalificacion{
        	sum += elemento
    	}
    	promedioFinal = sum/Double(arregloCalificacion.count)
    	print("Promedio: \(promedioFinal)")
	}

	func verCalificaciones(){
    	for (i, valor) in arregloCalificacion.enumerated(){
        	print("Posicion: \(i) elemento: \(valor)")
    	}
	}

}

var promedio1 = Promedio()
promedio1.agregarValores()
promedio1.agregarValores()
promedio1.agregarValores()
promedio1.agregarValores()
promedio1.arregloCalificacion += [6,7,6,8]
promedio1.verCalificaciones()
promedio1.calcularPromedio()
