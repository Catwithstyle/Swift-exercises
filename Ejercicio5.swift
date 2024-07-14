import Foundation

protocol Empleado{
    func calcularSalario()->Double;
}

class EmpleadoBase:Empleado{
    var salarioBase: Double
    
    init(salarioBase: Double){
        self.salarioBase = salarioBase
    }
    func calcularSalario()->Double{
        return salarioBase
    }
}

struct EmpleadoContratado:Empleado{
    var tarifaPorHora:Double
    var horasTrabajadas:Double

    func calcularSalario()->Double{
        return tarifaPorHora * horasTrabajadas
    }
}

func calcularSalarioTotal(empleados: [Empleado])->Double{
    var salarioTtotal = 0.0
    for empleado in empleados{
        salarioTotal += empleado.calcularSalario()
    }
    return salarioTotal
}
let empleadoBase = EmpleadoBase(salarioBase: 3000.0)
let empleadoContratado = EmpleadoContratado(tarifaPorHora:20.0, horasTrabajadas: 100.0)
let empleados: [Empleado] = [empleadoBase, empleadoContratado]

var salarioTotal = calcularSalarioTotal(empleados:empleados)
print("Salario total: \(salarioTotal)")