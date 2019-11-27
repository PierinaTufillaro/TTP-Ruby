#Tests

require_relative 'codigo5.rb'
require 'minitest/autorun'
require 'minitest/spec'

describe '#contar' do

	describe 'cuando alguno de los parametros no es string' do
		it 'Arroja una excepcion de tipo RuntimeError porque el primer parametro no es string' do
			a = 4
			b = "es un string"
			assert_raises(RuntimeError) do
				contar(a,b)
			end
		end

		it 'Arroja una excepcion de tipo RuntimeError porque el segundo parametro no es string' do
			a = "es un string"
			b = Time.now
			assert_raises(RuntimeError) do
				contar(a,b)
			end
		end
	end


	describe 'cuando ambos parametros son string' do
		it 'Devuelve 0 porque no se cuenta ninguna' do
			a = "pieri tufillaro"
			b = "pierina"
			assert_equal("El total de palabras contadas es 0", contar(a,b))
		end

		it 'Devuelve 4 porque se encuentran 4 palabras' do
			a = "pierina pierinano pierinasi pierina tufillaro"
			b = "pierina"
			assert_equal("El total de palabras contadas es 4", contar(a,b))
		end
	end
end