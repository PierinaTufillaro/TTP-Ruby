def da_nil?
	if (yield == nil)
		return true
	else
		return false
	end
end

p da_nil?{"pierina" == "pierina"}

p da_nil?{nil}