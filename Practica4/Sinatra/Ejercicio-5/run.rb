require 'bundler'
require_relative 'metodos'
require_relative 'middleware'
Bundler.require

use Middleware

get '/' do

print  "DOCUMENTACION:

1)	GET /mcm/:a/:b calcula y presenta el mínimo común múltiplo de los valores
	numéricos :a y :b

2)	GET /mcd/:a/:b calcula y presenta el máximo común divisor de los valores
	numéricos :a y :b

3)	GET /sum/* calcula la sumatoria de todos los valores numéricos recibidos como
	parámetro en el splat

4)	GET /even/* presenta la cantidad de números pares que hay entre los valores
	numéricos recibidos como parámetro en el splat

5)	POST /random presenta un número al azar

6)	POST /random/:lower/:upper presenta un número al azar entre :lower y :upper
(dos valores numéricos)"

end

get '/mcm/:a/:b' do
	# matches "GET /hello/foo" and "GET /hello/bar"
	# params[:name] is 'foo' or 'bar'

	num1 = params[:a].to_i
	num2 = params[:b].to_i

	"El M.C.M de #{num1} y #{num2} es #{mcm(num1,num2)}"
end

get '/mcd/:a/:b' do
	# matches "GET /hello/foo" and "GET /hello/bar"
	# params[:name] is 'foo' or 'bar'

	num1 = params[:a].to_i
	num2 = params[:b].to_i

	"El M.C.D de #{num1} y #{num2} es #{mcd(num1,num2)}"
end

get '/sum/*' do
	array = params[:splat]
	"La suma de los parametros es #{sumar(array)}"
end

get '/even/*' do
	array = params[:splat]
	"La cantidad de numeros pares en los parametros es #{pares(array)}"
end

post '/random' do
	
	"Tu numero es #{rand(1..1000)}"
end

post '/random/:lower/:upper' do
	num1 = params[:lower].to_i
	num2 = params[:upper].to_i
	"Tu numero es #{rand(num1..num2)}"
end

=begin
PARA REALIZAR UN POST DEBO ABRIR UNA TERMINAL PARALELA
Y PONER 
	curl -d "" http://localhost:4567/random/1/5
=end