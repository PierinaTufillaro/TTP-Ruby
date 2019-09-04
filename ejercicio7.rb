string = "Pierina Tufillaro"
puts "-----Original-----"
puts string
puts "-----Reversa-----"
puts string.reverse
puts "-----Sin Espacios-----"
puts string.gsub!(/\s+/, '')
puts "-----Reemplazando con numeros-----"
puts string.gsub!(/a+/,'4').gsub!(/e+/,'3').gsub!(/i+/,'1').gsub!(/o+/,'0').gsub!(/u+/,'6')