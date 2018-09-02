
import pepita.*
import comidas.*
import masAves.*

/*
 Para que Roque realice su entrenamiento, el mensaje es entrenar(), sin parámetros.
 Por lo tanto, Roque debe recordar a qué ave está entrenando. P.ej. 
 este sería un test en el que Roque entrena primero a Pepita y después a Pipa
 */

object roque {
	var property tuPupiloEs = pepita
	
	method pupiloActual() = tuPupiloEs
	method entrenar() {
		tuPupiloEs.volar(10)
		tuPupiloEs.comer(alpiste,300)
		tuPupiloEs.volar(5)
		tuPupiloEs.haceLoQueQuieras()
	}	
}