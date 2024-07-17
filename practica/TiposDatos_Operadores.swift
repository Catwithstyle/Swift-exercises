import Foundation 

import Foundation

func calcularEstadisticas(_ numeros: [Int]) -> (media: Double, mediana: Double, moda: Int) {
    // Calculate mean
    let suma = numeros.reduce(0, +)
    let media = Double(suma) / Double(numeros.count)
    
    // Calculate the Median
    let numerosOrdenados = numeros.sorted()         //sorted() Method that returns the elements of the sequence,sorted
    let mediana: Double                                                             
                                                //.count Method is like .length returns the length of the collection
                                                //devuelve la longitud de la collecion 
    if numerosOrdenados.count % 2 == 0 {
        //If the number of elements is even, take the average of the two central values
        mediana = Double(numerosOrdenados[numerosOrdenados.count / 2 - 1] + numerosOrdenados[numerosOrdenados.count / 2]) / 2.0
    } else {
        //If the number of elements is odd, take the central value
        mediana = Double(numerosOrdenados[numerosOrdenados.count / 2])
    }
    
    // Calculate the Mode
    var frecuencias: [Int: Int] = [:]
    for numero in numeros {
        frecuencias[numero, default: 0] += 1
    }
    let moda = frecuencias.max(by: { $0.value < $1.value })?.key ?? 0
    
    return (media, mediana, moda)
}

// Examples
let numeros = [1, 2, 3, 4, 4, 5, 6]
let estadisticas = calcularEstadisticas(numeros)
print("Media: \(estadisticas.media)")
print("Mediana: \(estadisticas.mediana)")
print("Moda: \(estadisticas.moda)")
