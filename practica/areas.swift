import Foundation

// Definición del struct Rectangulo
struct Rectangulo {
    var ancho: Double
    var alto: Double
    
    // Método para calcular el área del rectángulo
    func area() -> Double {
        return ancho * alto
    }
    
    // Método para calcular el perímetro del rectángulo
    func perimetro() -> Double {
        return 2 * (ancho + alto)
    }
}

// Crear una instancia de Rectangulo
let miRectangulo = Rectangulo(ancho: 5.0, alto: 3.0)

// Imprimir el área del rectángulo
print("Área del rectángulo: \(miRectangulo.area())")  // Salida: Área del rectángulo: 15.0

// Imprimir el perímetro del rectángulo
print("Perímetro del rectángulo: \(miRectangulo.perimetro())")  // Salida: Perímetro del rectángulo: 16.0
