def fun3
	puts "Entrando a fun3" 
	raise RuntimeError, "Excepción intencional" 
	puts "Terminando fun3"
rescue NoMethodError => e
	puts "Tratando excepción por falta de método"
rescue RuntimeError => e 
	puts "Tratando excepción provocada en tiempo de ejecución" 
rescue
	puts "Tratando una excepción cualquiera"
ensure
	puts "Ejecutando ensure de fun3" 
end

def fun2(x)
	puts "Entrando a fun2" 
	fun3
	a = 5 / x 
	puts "Terminando fun2"
end

def fun1(x)
	puts "Entrando a fun1" 
	fun2 x
rescue
	puts "Manejador de excepciones de fun1" 
	raise 
ensure
	puts "Ejecutando ensure de fun1" 
end

begin
	x = 0
	begin
		fun1 x
	rescue Exception => e 
		puts "Manejador de excepciones de Main"
		if x == 0
			puts "Corrección de x" 
			x = 1
			retry
		end
	end
	puts "Salida"
end

#A)
#SALIDA
#
#16. Imprime "Entrando a fun2" 
#2.  Imprime "Entrando a fun3" 
#8.  Imprime "Tratando excepción provocada en tiempo de ejecución" 
#12. Imprime "Ejecutando ensure de fun3" 
#16. Imprime "Manejador de excepciones de fun1" 
#29. Imprime "Ejecutando ensure de fun1" 
#39. Imprime "Corrección de x" 
#
# SE EJECUTA RETRY
#
#23. Imprime "Entrando a fun1"
#16. Imprime "Entrando a fun2"
#2.  Imprime "Entrando a fun3"
#8.  Imprime "Tratando excepción provocada en tiempo de ejecución"
#12. Imprime "Ejecutando ensure de fun3"
#19. Imprime "Terminando fun2"
#29. Imprime "Ejecutando ensure de fun1"
#44. Imprime "Salida"
#
#B)
#   Cuando en fun3 se levante la excepción RuntimeError será manejada
#por el rescue genérico (StandardError) en vez del específico para
#RuntimeError.
#
#C)
#   La palabra reservada retry vuelve a ejecutar el bloque actual en el 
#que ocurrió la excepcion manejada. Estos bloques normalmente se definen
#entre begin y end (a veces están implícitos como en las definiciones de
#métodos, clases, etc).
#   Si movemos la línea x = 0 como se indica, el script entrará en un bucle infinito 
#porque el retry siempre volverá a ejecutar esta linea (poniendo a x en cero antes
#de volver a ejecutar el codigo) y por ende siempre se seguirá ejecutando la 
#sentencia retry, ya que siempre se rescatara a la excepcion.