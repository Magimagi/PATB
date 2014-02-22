n = Integer(gets)
t = 0
while n != 1 do
	if n & 1 == 1
		n = 3 * n + 1
	end
	n >>= 1;
	t += 1;
end
puts t
