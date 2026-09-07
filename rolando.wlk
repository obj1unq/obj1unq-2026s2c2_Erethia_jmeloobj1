object rolando {
const mochila = []
var capacidadDeMochila = 2
const hogar = castilloDePiedra 

method mochila() {
  return mochila
}

method capacidadDeMochila(_capacidadDeMochila) {
  capacidadDeMochila = _capacidadDeMochila
}

method capacidadDeMochila() {
    return capacidadDeMochila
}

 method encontrarArtefacto(artefacto){
    if (self.validarRecolectarArtefacto()){
        mochila.add(artefacto) 
    }
    else{
    }

 }

 method validarRecolectarArtefacto(){
    return mochila.size() < capacidadDeMochila 
 }

method vaciarMochila() {
  hogar.guardarEnAlmacen(mochila)
  mochila.clear()
}

}

object castilloDePiedra{
  const almacenDeCastillo = [] 
   
method guardarEnAlmacen(artefactos) {
  almacenDeCastillo.addAll(artefactos)
}

method artefactosEnELCastillo() {
  return almacenDeCastillo
}
}

object espadaDelDestino {
  
}

object libroDeHechizos{

}

object collarDIvino{
  
}

object armaduraDeAceroValyrio {
  
}


