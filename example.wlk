// Mensajeros
object mensajeros{
  const mensajeros = [roberto, chuck, neo]
}

object roberto{
  const transporte = #{bicicleta, camion}
  

  method peso(){
    if(transporte == bicicleta){
      return 90 + 5
    }
    else{
      return 90 + 500 * camion.acoplados()
    }
  }

  method puedeHacerLLamada(){
    return false
  }
}

object chuck{
  method peso(){
    return 80
  }

  method puedeHacerLLamada(){
    return true
  }
}

object neo{
  var tieneCredito = true

  method peso(){
    return 0
  }

  method puedeHacerLLamada(){
    return tieneCredito
  }
}

// Destinos
object destinos{
  const destinos = #{puenteDeBrooklyn, laMatrix}
}

object puenteDeBrooklyn{
  method dejaPasarA(mensajero){
    return mensajero.peso() < 1000
  }
}

object laMatrix{
  method dejaPasarA(mensajero){
    return mensajero.puedeHacerLLamada()
  }
}