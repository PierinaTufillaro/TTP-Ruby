def longitud (arreglo)
	arreglo.map! { |string| string.length  }
	p arreglo
end

longitud ([ "", ""])