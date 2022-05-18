/*
 * cosas2: Regular. Faltó definir el método consecuenciaCarga() y algunas implementaciones
 * no eran del todo correctas. Por favor revisá los comentarios  y las sugerencias dentro
 * del código.
 */

object knightRider {
/* Bien(-) Falta el método para provocar la acción de consecuencia de la carga. Te dejo
 * como podría ser esa solución y una sugerencia para escribir los métodos de consulta sin
 * return y más resumido/compacto que facilita la lectura.
 */
	method peso() = 500
		
	method peligrosidad() = 10
		
	method bulto() = 1
	
	method consecuenciaCarga() {}
}

object bumblebee {
/* Regular. Falta el método para provocar la acción de consecuencia de la carga. Te dejo
 * como podría ser esa solución y una sugerencia para escribir los métodos de consulta sin
 * return y más resumido/compacto que facilita la lectura. Para implementar la solución del estado
 * de bumblebee como robot o auto, al ser 2 estados bien definidos en el enunciado, te convenía
 * usar una variable booleana, Te dejo una posible solución.
 */
 
 var esAuto = false
 
	method peso() = 800
		
	method peligrosidad() = if(esAuto) 15 else 30
	
	method esAuto() = esAuto //este es el getter para poder consultar el estado
	
	method transformar() {esAuto = not esAuto} // acá definimos el setter
		
	method bulto() = 2
	
	method consecuenciaCarga() {esAuto = false}
}

object paqueteLadrillos {
/* Bien(-). Falta el método para provocar la acción de consecuencia de la carga. Te dejo
 * como podría ser esa solución. La variable ladrillos conviene que esté inicializada
 * para que no falle el método bulto() en caso que el paquete no no tenga ladrillos. 
 * Además, te dejo una posible solución para resolver ese método bulto sin usar if (condicionales)
 */
 var ladrillos = 0
 
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
		
	method bulto() = (2.min(1.max(ladrillos-101))).max(3.min(ladrillos-301))
	
	method consecuenciaCarga() {ladrillos += 12}
}

object arena {
	/* Bien(-). Convendría inicializar la variable peso. Falta el método para provocar la acción 
	 * de consecuencia de la carga. Te dejo como podría ser esa solución y te dejo la forma
	 * resumida de los métodos de consulta. */
 var property peso = 0
	
	method peligrosidad() = 1
	
	method bulto() = 1
	
	method consecuenciaCarga() {peso += 20}
}

object bateriaAntiaerea {
	/* Regular. Falta el método para provocar la acción de consecuencia de la carga. Te dejo
 * como podría ser esa solución y unas sugerencias para escribir los métodos de consulta sin
 * return y más resumido/compacto que facilita la lectura. Para implementar la solución del estado
 * de la bateria como con o sin misiles, al ser 2 estados bien definidos en el enunciado, te convenía
 * usar una variable booleana, Te dejo una posible solución. */
 var estaConMisiles = false 
 
	method peso() = if(estaConMisiles) 300 else 200
	
	method peligrosidad() = if(estaConMisiles) 100 else 0
		
	method cargarDescargarMisiles() {estaConMisiles = !estaConMisiles}
	
	method estaConMisiles() = estaConMisiles // Acá el getter para poder consultar
		
	method bulto() = if(estaConMisiles) {2} else {1}
	
	method consecuenciaCarga() {estaConMisiles = true}
}

object contenedor {
	/* Bien(-). La lista de cosasDentro podría ser una constante si siempre va a apuntar
	 * a la misma lista que agregará cosas o la vaciará. Si nunca será apuntada esa referencia
	 * a otra lista, entonces conviene que sea una constante. Te simplifico un poco el código.
	 *  Falta el método para provocar la acción de consecuencia de la carga. Te dejo
 	 * como podría ser esa solución.
	 * */
	 const cosasDentro = []

	method peso() = cosasDentro.sum({ interior => interior.peso() }) + 100
		
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
		
	method consecuenciaCarga() {cosasDentro.forEach{c=>c.consecuenciaCarga()}}
	}

object residuosRadioactivos
	/* Bien(-) Falta el método para provocar la acción de consecuencia de la carga. Te dejo
 	* como podría ser esa solución y una sugerencia para escribir los métodos de consulta sin
 	* return y más resumido/compacto que facilita la lectura.
 	*/	{
 var property peso = 0
 	
	method peligrosidad() = 200
	
	method bulto() = 1
	
	method consecuenciaCarga() {peso+=15}
}

object embalajeSeguridad {
	/* Regular. En la definición del objeto se indica que el embalaje solo va a 
	 * envolver 1 solo objeto, por lo tanto no es correcto definir una lista. Te
	 * dejo como podría ser la solución. También falta concecuenciaCarga()
	 */

 var property cosaDentro
 
	method peso() = cosaDentro.peso()
		
	method peligrosidad() = cosaDentro.peligrosidad() / 2
				
	method bulto() = 2
	
	method consecuenciaCarga() {}
}

