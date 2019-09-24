module GenericFactory
	module ClassMethods
		def create(*args)
			new(*args)
		end
	end

	def self.included(base)
		base.extend(ClassMethods)
	end 

	def initialize(*args)
		raise NotImplementedError
	end
end

class ShoeFactory

	include GenericFactory
	def initialize(nombre, codigo, precio)
		@nombre = nombre
		@codigo = codigo
		@precio = precio
	end

end

shoe = ShoeFactory.create("Crocs", "23321", "$2000")
p shoe
