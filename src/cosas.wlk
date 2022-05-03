object knightRider
	{
	method peso()
		{
		return 500
		}
		
	method peligrosidad()
		{
		return 10
		}
	}

object bumblebee
	{
 var estado
 
	method peso()
		{
		return 800
		}
		
	method peligrosidad()
		{
		if (estado == auto) {return 15} else {return 30}
		}
	
	method setEstado(nuevoEstado)
		{
		estado = nuevoEstado
		}
	}

object paqueteLadrillos
	{
 var ladrillos
 
	method peso()
		{
		return ladrillos * 2
		}
		
	method peligrosidad()
		{
		return 2
		}
		
	method setLadrillos(cantidad)
		{
		ladrillos = cantidad
		}
	}

object arena
	{
 var peso

	method peso()
		{
		return peso
		}
	
	method peligrosidad()
		{
		return 1
		}
		
	method setPeso(kilos)
		{
		peso = kilos
		}
	}

object bateriaAntiarea
	{
 var estado
	method peso()
		{
		if (estado == conMisiles) {return 300} else {return 200}
		}
	
	method peligrosidad()
		{
		if (estado == conMisiles) {return 100} else {return 0}
		}
		
	method setEstado(portacion)
		{
		estado = portacion
		}
	}

object contenedor
	{
 var cosasDentro

	method peso()
		{
		// return 100 + cosasDentro
		}
		
	method peligrosidad()
		{
		// return nivel de peligro de la cosa mas peligrosa que lleva dentro 
		}
		
	method setInterior(lista)
		{
		cosasDentro = lista // supongamos que esto esta bien
		}
	}

object residuosRadioactivos
	{
 var peso
 
	method peso()
		{
		return peso
		}
		
	method peligrosidad()
		{
		return 200
		}
		
	method setPeso(kilos)
		{
		peso = kilos
		}
	}

object embalajeSeguridad
	{
 var cosaDentro
 
	method peso()
		{
		// return peso.cosaDentro
		}
		
	method peligrosidad()
		{
		// return ? / 2
		}
	}




