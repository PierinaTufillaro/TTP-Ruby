def contar (string1, string2)
	if (string1.is_a?(String) & string2.is_a?(String))
		total = string1.scan(/(?=#{string2})/i).length
		return "El total de palabras contadas es #{total}"	
	else
		raise RuntimeError, "Ambos parametros deben ser strings"
	end
end

contar("Una cuna puna", "una")