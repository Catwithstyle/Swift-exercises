import Foundation

// Definición del protocolo Volable
protocol Volable {
    func volar()
}

// Clase Pájaro que conforma al protocolo Volable
class Pajaro: Volable {
    func volar() {
        print("El pájaro está volando por el cielo.")
    }
}

// Clase Avión que conforma al protocolo Volable
class Avion: Volable {
    func volar() {
        print("El avión está volando en el aire a gran altitud.")
    }
}

// Crear una instancia de Pájaro
let miPajaro = Pajaro()
miPajaro.volar()  // Salida: El pájaro está volando por el cielo.

// Crear una instancia de Avión
let miAvion = Avion()
miAvion.volar()  // Salida: El avión está volando en el aire a gran altitud.
