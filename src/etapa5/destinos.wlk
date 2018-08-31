/* Destinos 
   Patagonia: aporta 30 joules 
   SierrasCordobesas: aporta 70 
**/

object patagonia {
	method energiaRevitalizadora(unAve) = 30
}

object sierrasCordobesas {
	method energiaRevitalizadora(unAve) = 70
}

object marDelPlata {
	var temporadaAlta = true
	method energiaRevitalizadora(unAve) {
		if (temporadaAlta) {
			return -20
		}
		else {
			return 80
		}
	}
	method esTemporadaAlta() { temporadaAlta = true } 
	method esTemporadaBaja() { temporadaAlta = false }
}

object noroeste {
	method energiaRevitalizadora(unAve) = unAve.energia() * 0.1
	}
	