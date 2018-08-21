
object pepon {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, cuanto) { energia += (cosa.energiaPorGramo() * cuanto) / 2 }
	method volar(kms) { energia -= kms*0.5 + 1 } 
	method haceLoQueQuieras() { 
		self.volar(1)
	} 
}

/*
 Pipa es una paloma de la cual no nos interesa controlar su energía, 
 sino que simplemente recuerde el acumulado de cuántos kms vuela y cuántos gramos de comida 
 (sin importar de dqué se trate) ingiere. 
 Esta información se puede consultar a través de los mensajes kmsRecorridos()
 y gramosIngeridos(). Cuando le piden que haga lo que quiera, Pipa no hace nada.
 */
// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	var kmsRecorridos 
	var gramosIngeridos
	method volar(kms) { kmsRecorridos += kms}
	method comer(gramos) { gramosIngeridos += gramos }
	method kmsRecorridos() { return kmsRecorridos }
	method gramosIngeridos() { return gramosIngeridos }
	/*
	 * cuando le dicen a pipa que haga lo que quiera, no hace nada
	 */
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código?
	// para que no de un error de referencia?
}
