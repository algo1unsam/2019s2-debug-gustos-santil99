/* colores */
object rojo { method esFuerte() { return true } }
object verde { method esFuerte() { return true } }
object celeste { method esFuerte() { return false } } 
object pardo { method esFuerte() { return false } }
object naranja { method esfuerte() { return true }  }

/* materiales */
object cobre { method brilla() { return false } method conductor() { return true } }
object vidrio { method brilla() { return true } method conductor() { return false }}
object lino { method brilla() { return false } method conductor() { return false }}
object madera { method brilla() { return false } method conductor() { return false }}
object cuero { method brilla() { return false } method conductor() { return false } }
object plomo {
	var property estado = "natural"
	method brilla(){ return estado == "natural" or estado == "cromado" }
	method conductor() { return estado == "cromado" }
}

/* objetos */
object remera {
	method color() { return rojo }
	method material() { return lino }
	method peso() { return 800 }
}

object pelota {
	method color() { return pardo }
	method material() { return cuero }
	method peso() { return 1300 }
}

object biblioteca {
	method color() { return verde }
	method material() { return madera }
	method peso() { return 8000 }
}

object munieco {
	var _peso 
	var _color
	
	method color() { return _color }
	method setColor(color) { _color = color }
	method material() { return vidrio }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
	
}

object placa {
	var _color
	var _peso 
	
	method color() { return _color }
	method setColor(color) { _color = color }
	method material() { return cobre }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}

object arito {
	method color() { return celeste }
	method material() { return cobre }
	method peso() { return 180 }	
}

object banquito {
	var _color = naranja
	method peso(){ return 1700 }
	method color() {  return _color }
	method setColor(color) { _color = color }
}

object caja {
	var _material
	var _contiene
	method material() { return _material }
	method setMaterial(material) { _material = material }
	method color() { return rojo }
	method setContiene(objeto) { _contiene = objeto }
	method contiene() { return _contiene }
	method peso() { return 400 + _contiene.peso() }
}

