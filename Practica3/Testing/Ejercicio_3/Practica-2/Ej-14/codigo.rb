module Change
	def opposite
		if (self.is_a?(TrueClass) || self.is_a?(FalseClass))
			if(self.class.to_s == "TrueClass")
				return false
			else
				return true
			end
		else	
			raise RuntimeError, "El valor a convertir debe ser booleano (true or false)"
		end
	end
end

class FalseClass; include Change; end
class TrueClass; include Change; end

tr = true
fa = false

p tr.opposite.opposite
p fa.opposite.opposite