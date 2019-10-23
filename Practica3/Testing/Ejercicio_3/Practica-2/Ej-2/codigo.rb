def ordenar(*args)
	a = args.to_a
	a.map { |each| 
			if (not each.is_a?(Integer)) 
				raise "El arreglo debe ser unicamente de enteros"
			end}
		a.sort!
		p a.to_s
end

ordenar(6,8,3)
