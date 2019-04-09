object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
// set = poner get = obtener
// polimorfismo = propiedad de que distintos objetos entiendan el mensaje

	var sueldo = 15000
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalDineroCobrado = 0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		totalDineroCobrado += self.sueldo()
	}
	method totalDineroCobrado(){
		return totalDineroCobrado
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	
	}
}
