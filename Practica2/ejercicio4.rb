def contarCaracteres (*args)
	args.map { |arg| puts "#{arg.to_s} --> #{arg.to_s.length}" }
end

contarCaracteres("i feel it comming", [1,2,3], {:nombre => "pier"})