#Tests

require_relative 'codigo4.rb'
require 'minitest/autorun'
require 'minitest/spec'

describe '#enPalabras' do
	describe 'cuando el valor no es una hora' do
		it 'Arroja una excepcion de tipo RuntimeError' do
			x = 9
			assert_raises(RuntimeError) do
				enPalabras(x)
			end
		end
	end

	describe 'cuando el valor es una hora' do
		describe 'cuando la hora es en punto' do
			it 'se ingresan los minutos en valor extremo 0' do
				x = Time.utc(2000,"jan",1,20,00,00)
				assert_equal("Son las 20 en punto", enPalabras(x))
			end

			it 'se ingresan los minutos en valor extremo 10' do
				x = Time.utc(2000,"jan",1,20,10,00)
				assert_equal("Son las 20 en punto", enPalabras(x))
			end

			it 'se ingresan los minutos en valor intermedio 5' do
				x = Time.utc(2000,"jan",1,20,10,00)
				assert_equal("Son las 20 en punto", enPalabras(x))
			end

		end

		describe 'cuando la hora es y cuarto' do
		
			it 'se ingresan los minutos en valor intermedio 15' do
				x = Time.utc(2000,"jan",1,20,15,00)
				assert_equal("Son las 20 y cuarto", enPalabras(x))
			end

			it 'se ingresan los minutos en valor extremo 11' do
				x = Time.utc(2000,"jan",1,20,11,00)
				assert_equal("Son las 20 y cuarto", enPalabras(x))
			end

			it 'se ingresan los minutos en valor extremo 20' do
				x = Time.utc(2000,"jan",1,20,20,00)
				assert_equal("Son las 20 y cuarto", enPalabras(x))
			end
		end


		describe 'cuando la hora es y media' do
		
			it 'se ingresan los minutos en valor intermedio 30' do
				x = Time.utc(2000,"jan",1,20,30,00)
				assert_equal("Son las 20 y media", enPalabras(x))
			end

			it 'se ingresan los minutos en valor extremo 21' do
				x = Time.utc(2000,"jan",1,20,21,00)
				assert_equal("Son las 20 y media", enPalabras(x))
			end

			it 'se ingresan los minutos en valor extremo 34' do
				x = Time.utc(2000,"jan",1,20,34,00)
				assert_equal("Son las 20 y media", enPalabras(x))
			end
		end

		describe 'cuando la hora es menos 25' do
		
			it 'se ingresan los minutos en valor intermedio 40' do
				x = Time.utc(2000,"jan",1,20,40,00)
				assert_equal("Son las 21 menos veinticinco", enPalabras(x))
			end

			it 'se ingresan los minutos en valor extremo 35' do
				x = Time.utc(2000,"jan",1,20,35,00)
				assert_equal("Son las 21 menos veinticinco", enPalabras(x))
			end

			it 'se ingresan los minutos en valor extremo 44' do
				x = Time.utc(2000,"jan",1,20,44,00)
				assert_equal("Son las 21 menos veinticinco", enPalabras(x))
			end
		end

		describe 'cuando la hora es menos 45' do
		
			it 'se ingresan los minutos en valor intermedio 50' do
				x = Time.utc(2000,"jan",1,20,50,00)
				assert_equal("Son las 21 menos cuarto", enPalabras(x))
			end

			it 'se ingresan los minutos en valor extremo 45' do
				x = Time.utc(2000,"jan",1,20,45,00)
				assert_equal("Son las 21 menos cuarto", enPalabras(x))
			end

			it 'se ingresan los minutos en valor extremo 55' do
				x = Time.utc(2000,"jan",1,20,55,00)
				assert_equal("Son las 21 menos cuarto", enPalabras(x))
			end
		end

		describe 'cuando la hora es casi las SIGUIENTE HORA' do
		
			it 'se ingresan los minutos en valor intermedio 57' do
				x = Time.utc(2000,"jan",1,20,57,00)
				assert_equal("Casi las 21", enPalabras(x))
			end

			it 'se ingresan los minutos en valor extremo 56' do
				x = Time.utc(2000,"jan",1,20,56,00)
				assert_equal("Casi las 21", enPalabras(x))
			end

			it 'se ingresan los minutos en valor extremo 59' do
				x = Time.utc(2000,"jan",1,20,59,00)
				assert_equal("Casi las 21", enPalabras(x))
			end
		end
	end
end

