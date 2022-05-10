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
		
	method bulto()
		{
		return 1
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
		if (estado == "auto") {return 15} else {return 30}
		}
	
	method setEstado(nuevoEstado)
		{
		estado = nuevoEstado
		}
		
	method bulto()
		{
		return 2
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
		
	method bulto()
		{
		if (ladrillos <= 100)
			{
			return 1
			}
		else if (ladrillos.between(100, 301))
			{
			return 2
			}
		else
			{
			return 3
			}
		}
	}

object arena
	{
 var property peso
	
	method peligrosidad()
		{
		return 1
		}
	
	method bulto()
		{
		return 1
		}
	}

object bateriaAntiaerea
	{
 var estado 
 
	method peso()
		{
		if (estado == "con misiles") {return 300} else {return 200}
		}
	
	method peligrosidad()
		{
		if (estado == "con misiles") {return 100} else {return 0}
		}
		
	method setEstado(portacion)
		{
		estado = portacion
		}
		
	method bulto()
		{
		if (estado == "con misiles") {return 2} else {return 1}
		}
	}

object contenedor
	{
 var cosasDentro = []

	method peso()
		{
		return cosasDentro.sum({ interior => interior.peso() }) + 100
		}
		
	method peligrosidad()
		{
		if (cosasDentro.isEmpty()) 
			{
			return 0
			}
		else
			{
			return cosasDentro.map({ interior => interior.peligrosidad() }).max()
			}
		}

	method setInterior(objeto)
		{
		cosasDentro.add(objeto)
		}
		
	method bulto()
		{
		return cosasDentro.sum({ interior => interior.bulto() }) + 1
		}
	}

object residuosRadioactivos
	{
 var property peso
 	
	method peligrosidad()
		{
		return 200
		}
	
	method bulto()
		{
		return 1
		}
	}

object embalajeSeguridad
	{
 var cosaDentro = []
 
	method peso()
		{
		return cosaDentro.anyOne().peso()
		}
		
	method peligrosidad()
		{
		return cosaDentro.anyOne().peligrosidad() / 2
		} 
		
	method setInterior(objeto)
		{
		cosaDentro.add(objeto)
		}
		
	method bulto()
		{
		return 2
		}
	}

