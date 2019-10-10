fibonacci1 = Enumerator.new do |caller|
  i1, i2 = 1, 1
  loop do
    caller.yield i1
    i1, i2 = i2, i1+i2
  end
end

fibonacci = 0
while fibonacci =< 400
	fibonacci = puts fibonacci1.next
end