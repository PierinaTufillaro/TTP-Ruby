def evaluar(*args)
	begin
		yield *args
	rescue RuntimeError
		puts "Algo salio mal..."
		:rt
	rescue NoMethodError => e
		puts "No encontre un metodo: #{e}"
		:nm
	rescue 
		puts "No se que hacer!"
		raise
	else 
		puts "Todo ok"
		:ok
	end
end

evaluar{"pierina".hola} 
evaluar{"pierina".length}
evaluar{1/0}
# evaluar{raise "pierina"}

#El runtime Error (ultima prueba, se debe realizar sin
#antes ejecutar todo el resto)