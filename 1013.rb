n, m = gets.chomp.split(" ")
n = n.to_i - 1; m = m.to_i - 1
noprime = []
prime = [2]
3.step(2000001, 2) { |i|
	prime << i if (!noprime[i])
	break if prime.length > m + 1
	prime.each_index { |j|
		break if i * prime[j] > 2000000
		noprime[i * prime[j]] = true;
		break if i % prime[j] == 0
	}
}
t = 0;
n.upto(m) {|i|
	t += 1
	print prime[i], (t % 10 == 0 || i == m ? "\n" : " ")
}
