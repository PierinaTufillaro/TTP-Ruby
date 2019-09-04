def contar (string1)
	total = string1.scan(/una{1}/).length
	puts "El total de palabras contadas es #{total}"
end

contar("una cuna puna")
