/* Destinos 
   Patagonia: aporta 30 joules 
   SierrasCordobesas: aporta 70 
**/

object patagonia {
	method energiaRevitalizadora() = 30
}

object sierrasCordobesas {
	method energiaRevitalizadora() = 70
}

object marDelPlata {
	const mes = (new Date()).month()
	method energiaRevitalizadora() {}
}