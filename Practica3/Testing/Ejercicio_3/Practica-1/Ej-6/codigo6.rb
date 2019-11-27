def words_from_string (string)
	string.downcase.scan(/[\w]+/)
end
 
def contar (string1, string2)
	if (string1.is_a?(String) & string2.is_a?(String))
		total = 0
		resultado = words_from_string(string1)
		resultado.each {|palabra| if palabra.eql? string2 then 
			total = total +1
			end }
		return "El total de palabras contadas es #{total}"
	else
		raise RuntimeError, "Ambos parametros deben ser strings"
	end
end

contar("un string un chico un gato", "un")