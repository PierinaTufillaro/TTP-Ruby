def rot13 (string)
	string.tr("a-zA-Z","n-za-mN-ZA-M")
end

p rot13("¡Bienvenidos a la cursada 2019 de TTPS Opción Ruby!")
