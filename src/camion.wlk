import cosas.*

object camion 
	{
 var carga = []
 
	method cargar(objeto)
		{
		carga.add(objeto)
		}
		
	method descargar(objeto)
		{
		carga.remove(objeto)
		}
		
	method todoPesoPar()
		{
		return carga.all({ interior => interior.peso().even() })
		}
		
	method hayAlgunoQuePesa(peso)
		{
		return carga.any({ interior => interior.peso() == peso })
		}
		
	method elDeNivel(nivel)
		{
		return carga.find({ interior => interior.peligrosidad() == nivel })
		}
		
	method pesoTotal()
		{
		return carga.sum({ interior => interior.peso() }) + 1000
		}
	
	method excedidoDePeso()
		{
		return self.pesoTotal() > 2500
		}
		
	method objetosQueSuperanPeligrosidad(nivel)
		{
		return carga.filter({ interior => interior.peligrosidad() == nivel })
		}
		
	method objetosMasPeligrososQue(cosa)
		{
		return carga.filter({ interior => interior.peligrosidad() > cosa.peligrosidad() })
		}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad)
		{
		return not self.excedidoDePeso() and 
		carga.all({ interior => interior.peligrosidad() < nivelMaximoPeligrosidad })
		}
		
	method tieneAlgoQuePesaEntre(min, max)
		{
		// "contains"?, no lo se...
		}
		
	method cosaMasPesada()
		{
		// vemos mañana...
		}
		
	method pesos()
		{
		// una listita, perrooo
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
