import Foundation

class Grafo {
    // Lista de adyacencia para almacenar el grafo
    var adyacencias: [Int: [Int]] = [:]
    
    // Agregar un nodo al grafo
    func agregarNodo(_ nodo: Int) {
        if adyacencias[nodo] == nil {
            adyacencias[nodo] = []
        }
    }
    
    // Agregar una arista entre dos nodos
    func agregarArista(_ desde: Int, _ hasta: Int) {
        adyacencias[desde, default: []].append(hasta)
        // Si el grafo es no dirigido, también agregar la arista en la dirección opuesta
        adyacencias[hasta, default: []].append(desde)
    }
    
    // Implementar el algoritmo DFS
    func dfs(inicio: Int) -> [Int] {
        var visitados: Set<Int> = []
        var recorrido: [Int] = []
        var pila: [Int] = [inicio]
        
        while !pila.isEmpty {
            let nodoActual = pila.removeLast()
            if !visitados.contains(nodoActual) {
                visitados.insert(nodoActual)
                recorrido.append(nodoActual)
                
                // Agregar los vecinos no visitados a la pila
                if let vecinos = adyacencias[nodoActual] {
                    for vecino in vecinos {
                        if !visitados.contains(vecino) {
                            pila.append(vecino)
                        }
                    }
                }
            }
        }
        
        return recorrido
    }
}

// Ejemplo de uso
let grafo = Grafo()
grafo.agregarNodo(1)
grafo.agregarNodo(2)
grafo.agregarNodo(3)
grafo.agregarNodo(4)
grafo.agregarNodo(5)
grafo.agregarArista(1, 2)
grafo.agregarArista(1, 3)
grafo.agregarArista(2, 4)
grafo.agregarArista(2, 5)
grafo.agregarArista(3, 5)

let recorridoDFS = grafo.dfs(inicio: 1)
print("Recorrido DFS desde el nodo 1: \(recorridoDFS)")
