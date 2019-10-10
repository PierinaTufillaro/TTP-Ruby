#7. Partiendo del script del inciso anterior, implementá una nueva clase de excepción que se
#utilizará para indicar que la entrada del usuario no es un valor numérico entero válido.
#¿De qué clase de la jerarquía de Exception heredaría?


class NumberDeniedError < ArgumentError
	def notificar
		puts "El numero ingresado es invalido"
	end
end

raise NumberDeniedError.new()
