n = Integer(gets.chomp)
ed = []
ans = []
input = gets.chomp.split(" ")
input.sort_by! { |x| 2000 - x.to_i }
input.each_index { |i|
	t = Integer(input[i])
	while t != 1
		if t & 1 == 1
			t = 3 * t + 1
		end
		t >>= 1
		ed << t
	end
}
input.each { |x| 
	if !ed.include?(x.to_i)
		ans << x
	end
}
ans.each_index { |i|
	print ans[i], i == ans.length - 1 ? "\n" : " "
}
