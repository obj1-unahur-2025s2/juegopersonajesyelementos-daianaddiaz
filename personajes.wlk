import objetos.*

object floki { //guerrero
    var arma = ballesta
    method cambiarArma(unaArma){
        arma = unaArma
    }
    method encontrar(elemento) {
        if (arma.estaCargada()) {
            elemento.recibirAtaqueDe(arma)
            arma.usar()
        }
    }
}

object mario { //trabajador
    var valorRecolectado = 0
    var ultimoElemento = null
    method encontrar(elemento) {
        elemento.recibeTrabajo()
        valorRecolectado = valorRecolectado + elemento.valor()
        ultimoElemento = elemento
    }
    method totalRecolectado() = valorRecolectado
    method esFeliz() =
        valorRecolectado > 50 || (ultimoElemento != null && ultimoElemento.altura() >= 10)   
}