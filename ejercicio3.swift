import Foundation

protocol Figura {
    func calcularArea() -> Double 

}

struct Cuadrado: Figura{
     let lado: Double

     func calcularArea() -> Double{
        return lado * lado
     }


}

struct Rectangulo: Figura{
    let ancho: Double
    let alto: Double 

    func calcularArea() -> Double{  
        return ancho * alto
    }
}

func calcularAreaTotal(figuras: [Figura]) -> Double{
    var areaTotal = 0.0
    for figura in figuras {
        areaTotal += figura.calcularArea()
    }
    return areaTotal
}

let cuadrado = Cuadrado(lado: 4.0)
let rectangulo = Rectangulo(ancho: 3.0, alto: 5.0)
let figuras: [Figura] = [cuadrado,rectangulo]

let areaTotal = calcularAreaTotal(figuras : figuras)
print("Area total:\(areaTotal)")


