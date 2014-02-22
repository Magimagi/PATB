line = gets.chomp.split(" ")
n = line.first.to_i
m = line.last.to_i % n
t = n - m
line = gets.chomp.split(" ") * 2
t.upto(t + n - 1) { |i| print i == t ? line[i] : " #{line[i]}"}
