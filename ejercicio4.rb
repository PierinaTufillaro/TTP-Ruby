def enPalabras (argumento)
min = argumento.min
hour = argumento.hour
case min
	when 0..10 then
		puts ("Son las #{hour} en punto")
	when  11..20 then
		puts ("Son las #{hour} y cuarto")
	when 21..34 then
		puts ("Son las #{hour} y media")
	when 35..44 then
		puts ("Son las #{hour + 1} menos veinticinco")
	when 45..55 then
		puts ("Son las #{hour + 1} menos cuarto")
	when 56..59 then
		puts ("Casi las #{hour + 1}")
	end
end

enPalabras(Time.now)

