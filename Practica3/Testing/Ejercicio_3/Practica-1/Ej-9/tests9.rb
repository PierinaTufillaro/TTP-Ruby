#Tests

require_relative 'codigo9.rb'
require 'minitest/autorun'
require 'minitest/spec'

describe '#longitud' do

	describe 'cuando el parametro no es arreglo' do
		it 'Arroja una excepcion de tipo RuntimeError porque el parametro no es arreglo' do
			a = 4
			assert_raises(RuntimeError) do
				longitud(a)
			end
		end
	end

	describe 'cuando el parametro es arreglo' do
		it 'Devuelve [] porque el arreglo esta vacio' do
			a = []
			assert_equal([], longitud(a))
		end

		it 'Devuelve 0 porque el string esta vacio' do
			a = [""]
			assert_equal([0], longitud(a))
		end


		it 'Devuelve 4 y 0' do
			a = ["pier", ""]
			assert_equal([4, 0], longitud(a))
		end
	end
end