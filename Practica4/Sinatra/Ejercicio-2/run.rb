require 'bundler'
Bundler.require

get '/' do
	num = rand(1..5)
	if (num == 5)
		"Mi numero es correcto"
	else
		halt 404
	end
end