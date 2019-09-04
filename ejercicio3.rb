def words_from_string (string)
	string.downcase.scan(/[\w]+/)
end

def reemplazar(string)
	array = words_from_string(string)
	for i in (0..array.length)
		if ( array[i] == "name")then
			array[i] = "pierina"
		elsif array[i] == "surname" then
			array[i] = "tufillaro"
		end
	end
end

puts reemplazar("name surname")

