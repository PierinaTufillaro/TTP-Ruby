def reemplazar(string)
	string.gsub!(/[{]/, "do\n")
	string.gsub!(/[}]/,"\nend")
	p string
end

reemplazar("name {}} surname")

