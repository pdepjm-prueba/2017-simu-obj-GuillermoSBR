import model.ExcepcionNoPuedeArreglarMaquina.*



class Trabajador {
	var estamina
	var rol

	method arreglarMaquina(complejidad, herramientas) {
		if (self.noPuedeArreglarMaquina(complejidad, herramientas)) { throw new NoPuedeArreglarMaquina()
			
		}estamina -= complejidad
	}

	method noPuedeArreglarMaquina(complejidad, herramientas) {
		return estamina < complejidad || self.tieneHerramientas(herramientas).negate() }

	method tieneHerramientas(herramientasNecesarias) {
		return rol.herramientas().asSet().equals(herramientasNecesarias.asSet())

	}
}