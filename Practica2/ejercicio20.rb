num1 = 1
num2 = 1
loop do
	num1, num2 = num2, num1 + num2 
	p num2
	break if num2 >= 400
end

