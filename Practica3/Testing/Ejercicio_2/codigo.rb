#Codigo de incrementar

def incrementar(a,*b)
	if (b.empty?)
		if (a.is_a?(Integer))
			r = a + 1
		else
			raise RuntimeError, "El parametro ingresado no debe ser un string"
		end
	else
		if (b[0].is_a?(Integer) & a.is_a?(Integer))
			r = a + b[0]
		else
			raise RuntimeError, "Ninguno de los parametros ingresados debe ser un string"
		end
	end
	p r
end


imp = incrementar(2)

#Codigo de concatenar

def concatenar(*args)
	imprimir = ""
	args.map { |arg| imprimir.concat(arg.to_s.strip)
		 			imprimir.concat(" ")}
	p imprimir
end

concatenar("pieri", 4, "ni idea")
