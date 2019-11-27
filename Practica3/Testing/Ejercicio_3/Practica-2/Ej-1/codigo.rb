def ordenarArreglo (unArreglo)
	if (unArreglo.is_a?(Array))
		unArreglo.map { |each| 
			if (not each.is_a?(Integer)) 
				raise "El arreglo debe ser unicamente de enteros"
			end}
		unArreglo.sort!
		p unArreglo.to_s
	else
		raise RuntimeError, "El parametro enviado debe ser de tipo Array"
	end
end

ordenarArreglo([])

