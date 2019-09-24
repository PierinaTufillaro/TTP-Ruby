module Change
	def opposite
		if(self.class.to_s == "TrueClass")
			return false
		else
			return true
		end
	end
end

class FalseClass; include Change; end
class TrueClass; include Change; end

tr = true
fa = false

p tr.opposite.opposite
p fa.opposite.opposite