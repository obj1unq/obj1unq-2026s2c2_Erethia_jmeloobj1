object rolando {
  const mochila = []
  var capacidadDeMochila = 2
  const hogar = castilloDePiedra
  const historiaDeRolando = historiaDeObjetos
  const poderBase = 5
  const batallasConCollarEnUso = 0 
  const enemigos = [caterina, archibaldo, astra]
  const moradasConquistables = []
 
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
  return poderBase + mochila.sum({artefacto => artefacto.poderQueAportaA_(self)})
}

method poderDePeleaEnBatalla() {
  return (poderBase + 1) + mochila.sum({artefacto => artefacto.poderQueAportaA_(self)})
}

method batallasConCollarEnUso() {
  return batallasConCollarEnUso
}

method hogar(){
return castilloDePiedra  
}


method poderDeObjetoMasPoderosoEnHogar() {
  return if (!hogar.artefactosEnCastillo().isEmpty()){
    (hogar.artefactosEnELCastillo().map({artefacto => artefacto.poderQuAPortaA_(self)})).max()
  }
  else{
    0
    }
  }

method enemigosQuePuedeVencer() {
  const enemigosQuePuedeVencer = enemigos.filter({enemigo => enemigo.poderDePelea()<self.poderDePelea()})
  return enemigosQuePuedeVencer
}

method moradasConquistables() {
 const moradasConquistables = enemigosQuePuedeVencer().map({enemigosQuePuedeVencer => enemigosQuePuedeVencer.hogar()}) 
 return moradasConquistables
}


method esPoderoso() {
  return ( enemigos.all({enemigo => enemigo.poderDePelea()<self.poderDePelea()}))
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
 var usos = 0
 method poderQueAportaA_(jugador) {
   return if(usos < 1){
      jugador.poder()
   }
   else{
    (jugador.poder() / 2)   
   }
   self.seUsoElArtefacto()
 } 

 method seUsoElArtefacto() {
   usos = usos + 1
 }

}


object libroDeHechizos {
  const hechizos = []


  method poderQueOtorgaA_(jugador) {
    return if (!hechizos.isEmpty()){
        hechizos.first().poderQueAportaA_(jugador)
    }
    else{
      0
    } 
  }
}


object bendicion {
  method poderQueAportaA_(jugador) {
    return 4
  }
}

object invisibilidad {
  method poderQueAportaA_(jugador) {
   return jugador.poderBase()
  }
}

object invocacion{
  method porderQueAportaA_(jugador) {
    return jugador.poderObjetoMasPoderosoEnHogar(jugador.hogar())
  }
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

object caterina {
  var poderDePelea = 28
  const hogar = fortalezaDeAcero

  method poderDePelea() {
    return poderDePelea
  }  

  method hogar() {
    return hogar
  }
}

object fortalezaDeAcero {
  
}

object archibaldo {
  var poderDePelea = 16
  const hogar = palacioDeMármol 

  method poderDePelea() {
    return poderDePelea
  }

  method hogar() {
    return hogar
  }
}

object palacioDeMármol {
  
}

object astra {
  var poderDePelea = 14
  const hogar = torreDeMarfil


  method poderDePelea() {
  return poderDePelea
  }

  method hogar() {
    return hogar
  }  

}

object torreDeMarfil {
  
}