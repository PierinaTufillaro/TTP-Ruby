#Tests

require_relative 'codigo.rb'
require 'minitest/autorun'
require 'minitest/spec'

describe '#ordenar' do
	it 'Arroja una excepcion de tipo RuntimeError porque 
	un parametro no es un entero' do
		x = "pier"
		y = 2
		assert_raises(RuntimeError) do
		ordenar(x,y)
		end
	end
	
	it 'Devuelve un arreglo con un cero porque el parametro pasado
	es un cero' do
		x = 0
		assert_equal("[0]", ordenar(x))
	end
	
	it 'Devuelve un arreglo ordenado correctamente' do
		x = 2
		y = 3
		z = 4
		assert_equal("[2, 3, 4]", ordenar(x,z,y))
	end

	it 'Devuelve un arreglo vacio porque el arreglo pasado
	por parametro esta vacio' do
		assert_equal("[]", ordenar())
	end
end