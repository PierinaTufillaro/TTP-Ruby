def ordenar(*args)
	arreglo = []
	args.map { |e| arreglo << e } 
	arreglo.sort!
	puts arreglo.to_s
end

ordenar(6,8,3)