noprime = Array.new(100005)
noprime.each_index { |i| noprime[i] = 0 }
prime = []
n = gets.chomp.to_i
ans = 0
last = 1
2.upto(n) { |i|
	if noprime[i] == 0
		prime << i
		if i - last == 2
			ans += 1
		end
		last = i
	end
	prime.each { |p|
		if i * p <= 100000
			noprime[i * p] = 1
		end
		if i % p == 0
			break
		end
	}
}
puts ans
