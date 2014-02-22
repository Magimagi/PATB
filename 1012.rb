num = gets.chomp.split(" ")
b = [false, false, false, false, false]
a = [0, 0, 0, 0, 0]
a3n = 0
sign = 1
1.upto(num.length - 1) { |i|
	n = Integer(num[i])
	b[n % 5] = true if n % 5 != 0
	case n % 5
	when 0
		(a[0] += n; b[0] = true) if n % 2 == 0
	when 1
		a[1] += n * sign; sign *= -1
	when 2
		a[2] += 1
	when 3
		a[3] += n; a3n += 1
	when 4
		a[4] = a[4] > n ? a[4] : n
	end
}
a[3] = sprintf("%.1f", a[3].to_f / a3n).to_f if b[3]
0.upto(4) { |i|
	a[i] = "N" if !b[i]
}
puts a.join(" ")
