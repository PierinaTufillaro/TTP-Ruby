def words_from_string (string)
	string.downcase.scan(/[\w]+/)
end

def reemplazar(string)
	array = words_from_string(string)
	for i in (0..array.length)
		if ( array[i].eql? "name")then
			array[i] = "pierina"
		elsif array[i].eql? "surname" then
			array[i] = "tufillaro"
		end
	end
	puts array
end

reemplazar("name surname")

