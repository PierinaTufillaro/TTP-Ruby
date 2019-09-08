def notacion_entera(arreglo)
	p arreglo[0] + (arreglo[1] * 256) + (arreglo[2] * 256 * 256)
end

def notacion_hexadecimal(arreglo)
	arreglo.each! {|each| each.to_s.hex }
end

notacion_entera([0, 128, 255])