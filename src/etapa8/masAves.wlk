
object pepon {
	var energia = 0
	
	method energia() { return energia }
	
	method comer(cosa, gramos) { energia += (cosa.energiaPorGramo() * gramos) / 2 }
	
	method volar(kms) { energia -= kms*0.5 + 1 } 
	
	method haceLoQueQuieras() { 
		self.volar(1)
	} 
	
	method puedeVolar(unosKms) = self.energia() >= 1 + unosKms * 0.5 
	
}

/*
 Pipa es una paloma de la cual no nos interesa controlar su energía, 
 sino que simplemente recuerde el acumulado de cuántos kms vuela y cuántos gramos de comida 
 (sin importar de dqué se trate) ingiere. 
 Esta información se puede consultar a través de los mensajes kmsRecorridos()
 y gramosIngeridos(). Cuando le piden que haga lo que quiera, Pipa no hace nada.
 */

object pipa {
	var kmsRecorridos = 0
	var gramosIngeridos = 0
	
	method volar(kms) { kmsRecorridos += kms}
	
	method comer(cosa, gramos) { gramosIngeridos += gramos }
	
	method kmsRecorridos() { return kmsRecorridos }
	
	method gramosIngeridos() { return gramosIngeridos }
	//cuando le dicen a pipa que haga lo que quiera, no hace nada
	method haceLoQueQuieras() { }
	// pregunta: ¿por qué es necesario agregar este método, sin código?
	// para que no de un error de referencia al usar roque?
	method puedeVolar(unosKms) = true
}
