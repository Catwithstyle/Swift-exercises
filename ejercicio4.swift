import Foundation 

enum MathOperation{
    case addition   
    case subtraction
    case multiplication
    case division
}

class MathOperator{
    static func realizarOperacion(_ a: Double,_ b: Double,_ operation:MathOperation)-> Double{
        switch operation {
            case .addition: return a + b
            case .subtraction: return a - b
            case .multiplication: return a * b
            case .division: if(b != 0){return a / b}else{print("Error: Division by 0");return 0}
        }

    }
}

let additionResult = MathOperator.realizarOperacion(10, 5,addition)
print("Sum Result: \(additionResult)")

let divisionResult = MathOperator.realizarOperacion(20,2,division)
print("Result of Division: \(divisionResult)")