#Tests

require_relative 'codigo.rb'
require 'minitest/autorun'
require 'minitest/spec'

describe '#ordenarArreglo' do
	describe 'cuando el valor no es una arreglo' do
		it 'Arroja una excepcion de tipo RuntimeError' do
			x = 9
			assert_raises(RuntimeError) do
				ordenarArreglo(x)
			end
		end
	end

	describe 'cuando el valor es una arreglo' do
		it 'Arroja una excepcion de tipo RuntimeError porque 
		el arreglo contiene algo que no es un entero' do
			x = ["pier",1,4,5]
			assert_raises(RuntimeError) do
				ordenarArreglo(x)
			end
		end
		it 'Devuelve un arreglo vacio porque el arreglo pasado
		por parametro esta vacio' do
			x = []
			assert_equal("[]", ordenarArreglo(x))
		end
		it 'Devuelve un arreglo ordenado correctamente' do
			x = [3,2,4]
			assert_equal("[2, 3, 4]", ordenarArreglo(x))
		end
	end
end

