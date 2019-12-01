def mcd(num1,num2)
	if num1 > num2
  		a = num1
  		b = num2
  	else
  		a = num2
  		b = num1
  	end

  	while (b != 0) 
  		mcd = b
  		b = a % b
  		a = mcd
  	end

  	return mcd
end


def mcm(num1,num2)
	if num1 > num2
  		a = num1
  		b = num2
  	else
  		a = num2
  		b = num1
  	end

  	num = (a * b)

	mcm = num / (mcd(a,b))

	return mcm
end

def separar(array)
  arreglo = array[0].split("/") 
  p arreglo.collect { |e| e.to_i }
end

def sumar(array)
	arreglo = separar(array)
	p arreglo.inject(:+)
end

def pares(array)
  arreglo = separar(array)
  p (arreglo.select { |num|  num.even?}).length 
end