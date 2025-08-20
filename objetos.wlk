/*- La `ballesta` nace con 10 flechas. Cada vez que se usa, pierde una flecha. Está cargada si tiene flechas. Su potencia es 4.
- La `jabalina` nace cargada. Se puede usar solamente una vez, o sea, con el primer uso deja de estar cargada. Su potencia es 30.*/
import personajes.*

object ballesta {
    const flechas = 10
    method carga() = flechas
    method usar() = flechas.cantidadFlechas() - 1
    method potencia() = 4
    method estaCargada() = self.carga() > 0
}

object jabalina {
    method carga() = 1
    method usar() = self.carga() - 1
    method potencia() = 30
    method estaCargada() = self.carga() > 0
}

object castillo {
    var arma = ballesta
    var nivelDefensa = 150

    method cambiarArma(otraArma) {
        arma = otraArma
    }
    method recibeAtaque() {
        nivelDefensa = nivelDefensa - arma.potencia()
    }
    method altura() = 20
    method valor() = nivelDefensa / 5 
    method recibeTrabajo() {
        nivelDefensa = (nivelDefensa + 20).min(200) 
    } 
}

object aurora { // vaca
    var arma = ballesta
    
    method cambiarArma(otraArma) {
        arma = otraArma
    }
    method altura() = 1
    method estaViva() = arma.potencia() < 10
    method valor() = 15
}


object tipa { // arbol
    var altura = 8
    method recibeTrabajo() {
        altura = altura + 1 
    }
    method valor() {
        return altura * 2
}
}

