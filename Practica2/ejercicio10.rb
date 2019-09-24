module Reverso
	def di_tcejbo
		puts self.object_id
	 	puts self.object_id.to_s.reverse
	end 
	def ssalc 
		puts self.class.to_s.reverse
	end
end

class Persona
	include Reverso
	def initialize(nombre, apellido)
		@nombre = nombre
		@apellido = apellido
	end
end

pi = Persona.new("Pierina","Tufillaro")
pi.ssalc 
pi.di_tcejbo