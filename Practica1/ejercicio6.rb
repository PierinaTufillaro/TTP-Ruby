def words_from_string (string)
	string.downcase.scan(/[\w]+/)
end
 
def contar (string1, string2)
	total = 0
	resultado = words_from_string(string1)
	resultado.each {|palabra| if palabra.eql? string2 then 
		total = total +1
		end }
	puts total
end

contar("un string un chico un gato", "un")