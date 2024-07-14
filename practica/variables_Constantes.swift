import Foundation
/*Escribe una funcion llamada calcularAreaYPerimetro
acepte dos parametros ancho y alto de tipo Double. 
la funcion debe devolver una tupla con el area y perimetro del 
rectangulo. utiliza constantes para los calculos y llama a la funcion
con valores de prueba, imprime los resultados*/

func calcularAreaYPerimetro(ancho:Double,alto:Double) -> (area:Double,perimetro:Double){
    let area = ancho * alto
    let perimetro = 2 * (ancho + alto)

    return (area,perimetro)
}

let resultado = calcularAreaYPerimetro(ancho: 5, alto: 10)
print("Área: \(resultado.area)") 
print("Perímetro: \(resultado.perimetro)")


