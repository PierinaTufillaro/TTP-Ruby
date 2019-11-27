#Ejercicio 4

def enPalabras (argumento)
	if argumento.is_a?(Time)
		min = argumento.min
		hour = argumento.hour
		case min
		when 0..10 then
			return ("Son las #{hour} en punto")
		when  11..20 then
			return ("Son las #{hour} y cuarto")
		when 21..34 then
			return ("Son las #{hour} y media")
		when 35..44 then
			return ("Son las #{hour + 1} menos veinticinco")
		when 45..55 then
			return ("Son las #{hour + 1} menos cuarto")
		when 56..59 then
			return ("Casi las #{hour + 1}")
		end
	else
		raise RuntimeError, "El parametro debe ser de tipo Time"
	end
end

x = Time.now

p x