
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// Fixed: energiaQueOtorga() -> energiaPorGramo().
object bigMac {
	method energiaPorGramo() { return 2 }
}

// el alcaucil da 20 joules por gramo

object alcaucil {
	method energiaPorGramo() { return 20}
}

// el sorgo da 9 joules por gramo

object sorgo {
	method energiaPorGramo() { return 9 }	
}

// despues, agregar mijo y canelones

object mijo {
	var mijoMojado
	method mojarse() { 
		mijoMojado = true
	}
	method secarse() { 
		mijoMojado = false
	}
	method energiaPorGramo() {
		if(mijoMojado) {
			return 15
		}
		else {
			return 20
		}
	}
}

object canelones {
	var conSalsa
	var conQueso
	method ponerSalsa() { 
		conSalsa = true
	}
	method sacarSalsa() {
		conSalsa = false
	}
	method ponerQueso() { 
		conQueso = true
	}
	method sacarQueso() {
		conQueso = false
	}
	method energiaPorGramo() {
		if(conSalsa && conQueso) {
			return 32 
		}
		else if (conSalsa && not conQueso) {
			return 25
		}
		else if (not conSalsa && conQueso) {
			return 27
		}
		else {
			return 20
		}
	}

}
