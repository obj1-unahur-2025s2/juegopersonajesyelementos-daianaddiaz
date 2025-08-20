import personajes.*
import objetos.*


/* ## Luisa

En cada momento del juego, `luisa` está manejando uno de sus personajes, es el _personaje activo_. En este modelo reducido, el personaje activo de `luisa` puede ser o bien `floki` o bien `mario`. 

El objeto `luisa` debe entender el mensaje `aparece(elemento)`. 
Cuando le llega este mensaje, `luisa` le dice a su personaje activo que encuentre al elemento. 
Luisa no nace con ningún personaje activo, hay que asignarle uno.*/

object luisa {
  var personajeActivo = mario
  method cambiarPersonajeActivo(personajeNuevo) {
    personajeActivo = personajeNuevo
  }
  method aparece(elemento){
    personajeActivo.encuentra(elemento)
  }
}