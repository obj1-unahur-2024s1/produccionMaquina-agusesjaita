object registroProduccion {
	const diasDeProduccion = []
	
	method agregarDiasProducidos(dias) = diasDeProduccion.addAll(dias)
	
	method algunDiaSeProdujo(cantidad) = diasDeProduccion.any({dia => dia == cantidad})
		
	method maximoValorDeProduccion() = diasDeProduccion.max()
	
	method valoresDeProduccionPares() = diasDeProduccion.filter({dia => dia.even()})
	
	method produccionEsAcotada(n1, n2) = diasDeProduccion.all({dia => dia.between(n1, n2)})
	
	method produccionesSuperioresA(cuanto) = diasDeProduccion.filter({dia => dia > cuanto})
	
	method produccionesSumando(n) =	diasDeProduccion.map({dia => dia + n})
	
	method totalProducido() = diasDeProduccion.sum()
	
	method ultimoValorDeProduccion() = diasDeProduccion.last()
	
	method cantidadProduccionesMayorALaPrimera() = self.produccionesSuperioresA(diasDeProduccion.first()).size()
}
