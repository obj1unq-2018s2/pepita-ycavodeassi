
import pepita.*
import comidas.*
import masAves.*

/*
 Para que Roque realice su entrenamiento, el mensaje es entrenar(), sin parámetros.
 Por lo tanto, Roque debe recordar a qué ave está entrenando. P.ej. 
 este sería un test en el que Roque entrena primero a Pepita y después a Pipa
 */

object roque {
	var pupilo
	
	method tuPupiloEs(ave) { pupilo = ave }
	
	method entrenar() {
		pupilo.volar(10)
		pupilo.comer(alpiste,300)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
	}	
}