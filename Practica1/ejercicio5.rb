def contar (string1, string2)
	total = string1.scan(/(?=#{string2})/i).length
	puts "El total de palabras contadas es #{total}"
end

contar("Una cuna puna", "una")
