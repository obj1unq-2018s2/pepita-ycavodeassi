import pepita.*
import comidas.*
/*
Roque es el entrenador de Pepita. Cuando entrena a un pepita usa su rutina para aves diseñada por él.
1. Volar 10 kms.
2. Comer 300 gramos de alpiste.
3. Volar 5 kms.
4. Que el ave haga lo que quiera (ver parte 2, al final) como premio.
Se pide modelar a Roque en objetos y que entienda el mensaje `entrenar()`. 
 */
object roque {
	method entrenar(unAve) {
		unAve.volar(10)
		unAve.comer(alpiste,300)
		unAve.volar(5)
		unAve.haceLoQueQuieras()
	}  
}