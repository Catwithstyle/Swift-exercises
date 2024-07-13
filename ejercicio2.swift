import Foundation

class Calculadora {
    static func sumar(_ a: Int,_ b: Int) -> Int{
        return a + b
    }
    static func restar(_ a: Int, _ b: Int) ->Int{
        return a - b
    }
}

func calcularSumaRestaYTotal(numeros: [Int]) -> (sumaTotal: Int,restaTotal: Int){
    var sumaTotal = 0
    var restaTotal = numeros.first ?? 0 // Inicializamos con el primero elemento del array

    for numero in numeros {
        sumaTotal = Calculadora.sumar(sumaTotal, numero)
    }
    for numero in numeros.dropFirst() {
        restaTotal = Calculadora.restar(restaTotal, numero)
    }
    return (sumaTotal,restaTotal)
}

//Ejemplo de uso
var numeros  = [1,2,3,4,5]
var resultado = calcularSumaRestaYTotal(numeros: numeros)
print("Suma total es de \(resultado.sumaTotal)")
print("Resta total es de \(resultado.restaTotal)")