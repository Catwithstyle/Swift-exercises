
import Foundation

// Función para sumar dos matrices
func sumaMatrices(_ matrizA: [[Int]], _ matrizB: [[Int]]) -> [[Int]]? {
    // Verificar que las dimensiones de las matrices sean iguales
    guard matrizA.count == matrizB.count && matrizA.first?.count == matrizB.first?.count else {
        print("Las dimensiones de las matrices no son compatibles para la suma.")
        return nil
    }
    
    // Crear una matriz resultado con las mismas dimensiones
    var matrizResultado = [[Int]]()
    
    for i in 0..<matrizA.count {
        var filaResultado = [Int]()
        for j in 0..<matrizA[i].count {
            // Sumar los elementos correspondientes
            filaResultado.append(matrizA[i][j] + matrizB[i][j])
        }
        matrizResultado.append(filaResultado)
    }
    
    return matrizResultado
}

// Función para multiplicar dos matrices
func multiplicarMatrices(_ matrizA: [[Int]], _ matrizB: [[Int]]) -> [[Int]]? {
    // Verificar que el número de columnas de la primera matriz es igual al número de filas de la segunda matriz
    guard matrizA.first?.count == matrizB.count else {
        print("El número de columnas de la primera matriz debe ser igual al número de filas de la segunda matriz.")
        return nil
    }
    
    // Crear una matriz resultado con las dimensiones correctas
    var matrizResultado = [[Int]](repeating: [Int](repeating: 0, count: matrizB.first!.count), count: matrizA.count)
    
    for i in 0..<matrizA.count {
        for j in 0..<matrizB.first!.count {
            for k in 0..<matrizA[i].count {
                // Multiplicar y sumar los elementos
                matrizResultado[i][j] += matrizA[i][k] * matrizB[k][j]
            }
        }
    }
    
    return matrizResultado
}

// Ejemplos de uso

// Matrices para la suma
let matriz1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

let matriz2 = [
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1]
]

// Ejemplo de suma de matrices
if let resultadoSuma = sumaMatrices(matriz1, matriz2) {
    print("Resultado de la suma:")
    for fila in resultadoSuma {
        print(fila)
    }
}

// Matrices para la multiplicación
let matrizA = [
    [1, 2],
    [3, 4]
]

let matrizB = [
    [2, 0],
    [1, 2]
]

// Ejemplo de multiplicación de matrices
if let resultadoMultiplicacion = multiplicarMatrices(matrizA, matrizB) {
    print("Resultado de la multiplicación:")
    for fila in resultadoMultiplicacion {
        print(fila)
    }
}
