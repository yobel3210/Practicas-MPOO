import Foundation

class Matrices{
    var matrizA = [[4,5],[-1,11]]
    var matrizB = [[0,-8],[-1,1]]

    func sumaDeMatrices(){
        print("matriz suma")
        var mSuma:[Int]=[]
        for (i,_) in matrizA.enumerated(){
            for (j,_) in matrizB.enumerated(){
                mSuma.append(matrizA[i][j] + matrizB[i][j])
            }
        }
        print(mSuma[0...1])
        print(mSuma[2...3])
        print("\n")
    }

    func restaDeMatrices(){
        print("matriz resta")
        var mResta:[Int]=[]
        for (i,_) in matrizA.enumerated(){
            for (j,_) in matrizB.enumerated(){
                mResta.append(matrizA[i][j] - matrizB[i][j])
            }
        }
        print(mResta[0...1])
        print(mResta[2...3])
        print("\n")
    }

    func multiplicacionPorEscalar(){
        var matrizEscaladaA:[Int]=[]
        var matrizEscaladaB:[Int]=[]
        print("ingrese un escalar por el que quiera multiplicar la matriz A")
        var escalarA = Int(readLine()!)!
        for (i,_) in matrizA.enumerated(){
            for (j,_) in matrizA.enumerated(){
                matrizEscaladaA.append(escalarA*matrizA[i][j])
            }
        }
        print(matrizEscaladaA[0...1])
        print(matrizEscaladaA[2...3])

        print("\n Ingrese un escalar por el que quiera multiplicar a la matriz B")
        var escalarB = Int(readLine()!)!
        for (i,_) in matrizB.enumerated(){
            for (j,_) in matrizB.enumerated(){
                matrizEscaladaB.append(escalarB*matrizB[i][j])
            }
        }
        print(matrizEscaladaB[0...1])
        print(matrizEscaladaB[2...3])
        print("\n")
    }

    func traspuestaDeMatrices(){
        var matrizTraspuestaA:[Int]=[]
        var matrizTraspuestaB:[Int]=[]
        for (i,_) in matrizA.enumerated(){
            for (j,_) in matrizA.enumerated(){
                matrizTraspuestaA += [matrizA[j][i]]
            }
        }
        print("Traspuesta de la matriz A")
        print(matrizTraspuestaA[0...1])
        print(matrizTraspuestaA[2...3])

        for (i,_) in matrizB.enumerated(){
            for (j,_) in matrizB.enumerated(){
                matrizTraspuestaB += [matrizB[j][i]]
            }
        }
        print("\nTraspuesta de la matriz B")
        print(matrizTraspuestaB[0...1])
        print(matrizTraspuestaB[2...3])
    }

}

var operacion = Matrices()
operacion.sumaDeMatrices()
operacion.restaDeMatrices()
operacion.multiplicacionPorEscalar()
operacion.traspuestaDeMatrices()
