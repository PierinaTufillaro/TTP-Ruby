puts "-----Arreglos-----"

nuevoArreglo = [ 2, 3, 4, 5, 6]

puts "Los numeros del arreglo son #{nuevoArreglo}"

h = {1 => "alicia", 2 => "barbara"}

puts "-----Hashes-----"

puts "Los nombres de las mujeres son:" 

h.each_value {|value| puts value}

puts "Las claves son:"

h.each {|key, value| puts key }


