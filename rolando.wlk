object rolando {
const mochila = []
var capacidadDeMochila = 2

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


}

object espadaDelDestino {
  
}

object libroDeHechizos{

}

object armaduraDeAceroValyrio {
  
}


