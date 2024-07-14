import Foundation 

enum EstadoPedido {
    case procesando 
    case enviado
    case entregado

}
protocol NotificacionPedido: AnyObject{
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido) -> Void
}

class Pedido {
    var estado: EstadoPedido
    var delegate: NotificacionPedido?

     init(estado: EstadoPedido){
      self.estado = estado
     }

  func cambiarEstado(nuevoEstado: EstadoPedido){
    self.estado = nuevoEstado
    if delegate != nil{
      delegate?.notificarCambioDeEstado(nuevoEstado: nuevoEstado)
    }
  }
}

class GestorPedido: NotificacionPedido{
  func notificarCambioDeEstado(nuevoEstado: EstadoPedido) {
      print("El estado del pedido a cambiado a \(nuevoEstado)")
  }

}

var gestor = GestorPedido()
var pedido = Pedido(estado: EstadoPedido.procesando)
print("El estado del pedido actual es \(EstadoPedido.procesando)")
pedido.delegate = gestor
pedido.cambiarEstado(nuevoEstado: EstadoPedido.entregado)