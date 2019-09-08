[:upcase, :downcase, :capitalize, :swapcase].map do | meth|
 p "TTPS Ruby".send(meth)
end

# ".send" invoca al método identificado por los simbolos
# 			
#         :upcase coloca todo el string en mayusculas
# 
#         :downcase coloca todo el string en minuscula
# 
#         :capitalize coloca la primer palabra del string en mayuscula
# 
#         :swapcase invierte, es decir a lo que originalmente es mayus 
#                   lo pasa a minus, y lo que es minus lo pasa a mayus