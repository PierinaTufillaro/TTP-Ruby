#Tests

require_relative 'codigo.rb'
require 'minitest/autorun'
require 'minitest/spec'

describe '#ordenar' do
	it 'Devuelve un arreglo con un cero porque el parametro pasado
	es un cero' do
		x = 0
		assert_equal(["0 --> 1"], contarCaracteres(x))
	end
	
	it 'Devuelve un arreglo ordenado correctamente' do
		x = "i feel it comming"
		y = [1, 2, 3]
		z = {:nombre=>"pier"}
		assert_equal("i feel it comming" --> 17 [1, 2, 3] --> 9 {:nombre=>"pier"} --> 17, contarCaracteres(x,y,z))
	end

end















