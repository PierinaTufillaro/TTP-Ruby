def sumaDeNumerosPares(tope)
	total = 0
	for i in (0..tope)
		if (i%3 == 0) or (i%5 == 0) then
			total = total + i
		end
	end
	puts "La suma es #{total}"
end

sumaDeNumerosPares(10)