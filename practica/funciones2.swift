import Foundation

func busquedaBinariaRecursiva(_ array: [Int], valor: Int, inicio: Int, fin: Int) -> Int? {
    if inicio > fin {
        return nil
    }
    
    let medio = inicio + (fin - inicio) / 2
    
    if array[medio] == valor {
        return medio
    } else if array[medio] < valor {
        return busquedaBinariaRecursiva(array, valor: valor, inicio: medio + 1, fin: fin)
    } else {
        return busquedaBinariaRecursiva(array, valor: valor, inicio: inicio, fin: medio - 1)
    }
}

// Ejemplo de uso
let arrayOrdenado = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
if let posicion = busquedaBinariaRecursiva(arrayOrdenado, valor: 7, inicio: 0, fin: arrayOrdenado.count - 1) {
    print("El valor 7 se encuentra en la posición \(posicion).")
} else {
    print("El valor 7 no se encuentra en el array.")
}
