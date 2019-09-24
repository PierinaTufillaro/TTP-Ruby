num1 = 0
num2 = 1
loop do
	puts num1 
	puts num2 + num1
	num2 = num2 + num1
	i = num2 + num1
	break if i == 4000000
end