import comidas.*
import destinos.*
 
 
object pepita {
	var property energia = 0
	
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	
	method visitar(destino) { energia += destino.energiaRevitalizadora(self)  }
	
}