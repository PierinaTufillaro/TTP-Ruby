#Lazy enumerators
#_Podemos crear objetos enumerator explícitamente en vez de hacerlo a partir
#de una colección
#_Para ello es necesario utilizar un bloque en la creación. 
#	-El código del bloque se usará por el objeto Enumerator cada vez que el
#	programa principal le solicite un nuevo valor
#	-Este bloque no se ejecutará como otros bloques dado que su ejecución se 
#	disparará cada vez que se solicita el siguiente valor
#	-La ejecución del bloque se pausa y vuelve al programa principal cuando 
#	se encuentra yield
#	-Cuando se solicita el siguiente valor, el código del bloque continúa a 
#	partir de la línea siguiente al yield