n = Integer(gets.chomp)
b = n / 100
n = n % 100
s = n / 10
n = n % 10
b.times { print "B" }
s.times { print "S" }
n.times { |i| print i + 1 }
