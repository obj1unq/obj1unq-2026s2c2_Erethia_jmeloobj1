object rolando {
  const mochila = []
  var capacidadDeMochila = 2
  const hogar = castilloDePiedra
  var historiaDeRolando = historiaDeObjetos
  const poderBase = 5
  const batallasConCollarEnUso = 0 
 
  method mochila() = mochila
  
  method capacidadDeMochila(_capacidadDeMochila) {
    capacidadDeMochila = _capacidadDeMochila
  }
  
  method capacidadDeMochila() = capacidadDeMochila
  
  method encontrarArtefacto(artefacto) {
    if (self.validarRecolectarArtefacto()){ 
          mochila.add(artefacto)
          historiaDeRolando.agregarObjetoEncontrados(artefacto)
    }
    else{
        historiaDeRolando.agregarObjetoEncontrados(artefacto)
    }
  }  

  method historiaDeRolando() {
    return historiaDeRolando.objetosEncontrados()
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

  method poderBase() {
    return poderBase
  }

method poderDePelea() {
  return poderBase + poder de artefactos en mochila
}

method batallasConCollarEnUso() {
  return batallasConCollarEnUso
}

}

object historiaDeObjetos{
    const objetosEncontrados = []
    
    method objetosEncontrados() {
      return objetosEncontrados
    }

  method agregarObjetoEncontrados(artefacto) {
    objetosEncontrados.add(artefacto)
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
 const usos = 0
 method poderQueAportaA_(jugador) {
   return if(usos < 1){
      jugador.poder()
   }
   else{
    (jugador.poder() / 2)   
   }
   self.seUsoElArtefacto()
 } 

 method seUsoLaEspada() {
   usos = usos + 1
 }

}

object libroDeHechizos {
  
}

object collarDIvino {
  
  method poderQueAportaA_(jugador) {
    return if (jugador.poderBase() > 6){
      3 + jugador.batallasConCollarEnUso()
    }
    else{
      3
    }
  }
}

object armaduraDeAceroValyrio {
  method poderQueAportaA_(jugador) {
    return 6
  }
}
