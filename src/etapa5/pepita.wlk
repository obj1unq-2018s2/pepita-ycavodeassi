import comidas.*
import destinos.*
 
 
object pepita {
	var energia = 0
	
	method energia() { return energia }
	
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	
	method visitar(destino) { energia += destino.energiaRevitalizadora(self)  }
	
}