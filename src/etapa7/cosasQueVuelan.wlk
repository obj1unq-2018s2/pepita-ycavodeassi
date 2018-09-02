import roque.*
import pepita.*
import masAves.*

object helicopteroFeo {
  var kmDesdeUltimoService = 0
  const frecuenciaServiceKm = 1000

  method volar(km) { kmDesdeUltimoService += km }
  method requiereService() { return kmDesdeUltimoService >= frecuenciaServiceKm } 
  method registarService() { kmDesdeUltimoService = 0 }
  //Agrego los sig. metodos para que Roque pueda entrenarlo
  method comer(algo,gramos) {}
  method haceLoQueQuieras() {}
}


object pepucha { 
  var cuantoComioDesdeUltimoVuelo = 0
  var kmVoladosConPilas = 0
  var kmVoladosSinPilas = 0

  method volar(km) { 
    if (cuantoComioDesdeUltimoVuelo > 100) {
      kmVoladosConPilas += km
    } else {
      kmVoladosSinPilas += km
    }
    cuantoComioDesdeUltimoVuelo = 0
  }
  method comer(algo,gramos) { cuantoComioDesdeUltimoVuelo += gramos }
  method esBienTratada() { return kmVoladosConPilas >= kmVoladosSinPilas }
  //Agrego los sig. metodos para que Roque pueda entrenarlo
  method haceLoQueQuieras() {}
}
