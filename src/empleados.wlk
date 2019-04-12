object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
// set = poner get = obtener
// polimorfismo = propiedad de que distintos objetos entiendan el mensaje

	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		if (sueldo >= deuda){
			dinero = sueldo - deuda
			deuda = 0
	    }else {
	    	deuda = deuda - sueldo
	    }
		
	}
	method gastarDinero(gasto){
		if (dinero >= gasto) {
			dinero = dinero - gasto
		}else{
			if (dinero < 0){
				deuda = gasto - dinero
				dinero = 0
			}else{
				deuda = deuda + gasto
			}
		}
	   
	    	
		
	}
	method totalDinero(){return dinero}
	method totalDeuda(){return deuda}
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
