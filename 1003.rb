n = Integer(gets.chomp())
n.times do
	flag = true;
	p = t = -1
	a = b = c = 0
	s = gets.chomp()
	for i in 0...s.length do
		if s[i] == 'P'
			if p == -1
				p = i
			else
				flag = false;
				break
			end
		elsif s[i] == 'A'
			if p == -1
				a += 1
			elsif t == -1
				b += 1
			else
				c += 1
			end
		elsif s[i] == 'T'
			if t == -1
				t = i
			else
				flag = false;
				break
			end
		else
			flag = false;
			break
		end
	end
	if p == -1 || t == -1 || b == 0
		flag = false
	end
	c -= a
	b -= 1
	if c < b * a
		flag = false
	end
	puts flag ? "YES" : "NO"
end
