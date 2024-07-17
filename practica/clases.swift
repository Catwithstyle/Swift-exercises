import Foundation

class Coche {
    // Propiedades de la clase
    var marca: String
    var modelo: String
    var año: Int
    
    // Inicializador para establecer las propiedades
    init(marca: String, modelo: String, año: Int) {
        self.marca = marca
        self.modelo = modelo
        self.año = año
    }
    
    // Método para describir el coche
    func describir() -> String {
        return "El coche es un \(marca) \(modelo) del año \(año)."
    }
}

// Crear una instancia de Coche
let miCoche = Coche(marca: "Toyota", modelo: "Corolla", año: 2022)

// Llamar al método describir
print(miCoche.describir())
