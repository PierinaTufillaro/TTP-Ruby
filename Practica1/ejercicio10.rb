def a_ul(aHash)
	puts "<ul>"
	aHash.each {|key, value| print "<li> #{key} : #{value} </l1>\n" }
	puts "</ul>"
end

aH = {"perros:" => 1, "gatos:" => 1, "peces:" => 0 }

a_ul(aH)