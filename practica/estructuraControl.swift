import Foundation

// Función para ordenar un array de enteros utilizando el algoritmo de selección
func ordenarPorSeleccion(_ array: [Int]) -> [Int] {
    var arrayOrdenado = array
    
    for i in 0..<arrayOrdenado.count {
        // Encontrar el índice del elemento más pequeño en la sublista que empieza en i
        var indiceMinimo = i
        for j in i+1..<arrayOrdenado.count {
            if arrayOrdenado[j] < arrayOrdenado[indiceMinimo] {
                indiceMinimo = j
            }
        }
        // Intercambiar el elemento más pequeño encontrado con el primer elemento no ordenado
        if i != indiceMinimo {
            let temp = arrayOrdenado[i]
            arrayOrdenado[i] = arrayOrdenado[indiceMinimo]
            arrayOrdenado[indiceMinimo] = temp
        }
    }
    
    return arrayOrdenado
}

// Ejemplo de uso
let arrayDeEjemplo = [64, 25, 12, 22, 11]
let arrayOrdenado = ordenarPorSeleccion(arrayDeEjemplo)
print("Array ordenado por selección: \(arrayOrdenado)")
