class Vehiculo
	def arrancar
	end
end

class Auto < Vehiculo
	attr_accessor :freno, :cambio

	def initialize
		@freno = true
		@cambio = false
	end

	def arrancar
		if (@freno == false & @cambio = true)then 
			true
		else
			false
		end
	end
end

class Moto < Vehiculo
	attr_accessor :llave

	def initialize
		@llave = false
	end

	def arrancar
		if (@llave == false)then 
			true
		else
			false
		end
	end
end

class Lancha < Vehiculo
	attr_accessor :llave

	def initialize
		@llave = false
	end

	def arrancar
		if (@llave == true)then 
			true
		else
			false
		end
	end
end

class Taller
	def probar(objeto)
		objeto.arrancar
	end
end

auto = Auto.new
taller = Taller.new
puts taller.probar(auto)
auto.freno = false
auto.cambio = true
puts taller.probar(auto)
 