object rolando {
  const mochila = []
  var capacidadDeMochila = 2
  const hogar = castilloDePiedra
  
  method mochila() = mochila
  
  method capacidadDeMochila(_capacidadDeMochila) {
    capacidadDeMochila = _capacidadDeMochila
  }
  
  method capacidadDeMochila() = capacidadDeMochila
  
  method encontrarArtefacto(artefacto) {
    if (self.validarRecolectarArtefacto()) mochila.add(artefacto)
  }
  
  method posesionesDeRolando() = hogar.artefactosEnElCastillo() + mochila
  
  method validarRecolectarArtefacto() = mochila.size() < capacidadDeMochila
  
  method vaciarMochila() {
    hogar.guardarEnAlmacen(mochila)
    mochila.clear()
  }
  
  method poseeArtefacto(artefacto) {
    return self.posesionesDeRolando().contains(artefacto) 
     }


}

object castilloDePiedra {
  const almacenDeCastillo = []
  
  method guardarEnAlmacen(artefactos) {
    almacenDeCastillo.addAll(artefactos)
  }
  
  method artefactosEnELCastillo() = almacenDeCastillo
}

object espadaDelDestino {
  
}

object libroDeHechizos {
  
}

object collarDIvino {
  
}

object armaduraDeAceroValyrio {
  
}
