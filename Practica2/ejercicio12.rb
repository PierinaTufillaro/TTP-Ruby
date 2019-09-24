class GenericFactory
	def self.create(*args)
		new(*args)
	end
	def initialize(*args)
		raise NotImplementedError
	end
end

class ShoeFactory < GenericFactory
	def initialize(nombre, codigo, precio)
		@nombre = nombre
		@codigo = codigo
		@precio = precio
	end
end

shoe = ShoeFactory.create("Crocs", "23321", "$2000")
p shoe

