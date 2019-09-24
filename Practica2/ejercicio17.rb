def procesar_hash (unHash, unProc)
	p Hash[unHash.map { |key, value| [value, unProc.call(key)] }]

end




aHash = {1 => 'clave1', 2 => 'clave2'}

procesar_hash(aHash, ->(x) {x.to_s})