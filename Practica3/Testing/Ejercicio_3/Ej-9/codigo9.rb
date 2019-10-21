def longitud (arreglo)
	if arreglo.is_a?(Array)
		arreglo.map! { |string| string.length  }
		return arreglo
	else
		raise RuntimeError, "El parametro debe ser un arreglo"
	end
end
