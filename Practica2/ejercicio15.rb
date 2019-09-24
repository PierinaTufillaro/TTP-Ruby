VALUE = 'global'

module A
	VALUE = 'A'
	
	class B
		VALUE = 'B'
	
		def self.value
			VALUE
		end

		def value
			'iB'
		end
	end
	
	def self.value
		VALUE
	end
end

class C
	class D
		VALUE = 'D'

		def self.value
			VALUE
		end
	end

	module E
		def self.value
			VALUE
		end
	end

	def self.value
		VALUE
	end
end

class F < C
	VALUE = 'F'
end

#i. ¿Qué imprimen cada una de las siguientes sentencias? ¿De dónde está obteniendo el valor?
#a. puts A.value Devuelve A ya que a la variable global
# se le asigna A 
#b. puts A::B.value Devuelve B PERO QUE SON LOS ::
#c. puts C::D.value Devuelve D PERO QUE SON LOS ::
#d. puts C::E.value Devuelve "global"
#e. puts F.value Devuelve "global"
#ii. ¿Qué pasaría si ejecutases las siguientes sentencias? ¿Por qué?
#a. puts A.new.value Devuelve "global"
#b. puts B.value "ERROR: La constante B no esta 
#   inicializada"
#d. puts C::D.value Devuelve D
#e. puts C.value Devuelve "global"
#f. puts F.superclass.value Devuelve "global"

# Los :: se utilizan como namespaces, es decir, para referenciar a una clase que se encuentra
# declarada dentro de un modulo, se coloca NOMBRE_MODULO :: CLASE
