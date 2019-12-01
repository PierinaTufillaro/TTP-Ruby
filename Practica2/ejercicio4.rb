module Countable
	def contarCaracteres (*args)
		args.map { |arg| puts "#{arg.to_s} --> #{arg.to_s.length}" }
	end
end


class Zapato
	include Countable
	attr_accessor :codigo, :nombre, :talle

	def initialize(codigo,nombre,talle)
		@codigo = codigo
		@nombre = nombre
		@talle = talle	
	end
	
end

#unZapato = Zapato.new(222,"sofia",43)
#unZapato.contarCaracteres(unZapato.codigo)
