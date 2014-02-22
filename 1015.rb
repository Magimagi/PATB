class Student
	attr_accessor :no
	attr_accessor :de
	attr_accessor :cai
	def initialize (no, de, cai)
		@no = no
		@de = de
		@cai = cai
	end
end
ans = []; ans[0] = []; ans[1] = []; ans[2] = []; ans[3] = []
total = 0
n, l, h = gets.chomp.split(" ")
n = n.to_i; l = l.to_i; h = h.to_i
n.times do
	no, de, cai = gets.chomp.split(" ")
	de = de.to_i
	cai = cai.to_i
	if de < l || cai < l
		next
	end
	now = Student.new(no, de, cai)
	total += 1
	if de >= h && cai >= h
		ans[0] << now
	elsif de >= h
		ans[1] << now
	elsif de >= cai
		ans[2] << now
	else
		ans[3] << now
	end
end
puts total
0.upto(3) { |i|
	ans[i].sort! {|a,b|
		if a.de + a.cai != b.de + b.cai
			b.de + b.cai <=> a.de + a.cai
		elsif a.de != b.de
			b.de <=> a.de
		else
			a.no <=> b.no
		end
	}
	ans[i].each { |x| printf "%s %d %d\n", x.no, x.de, x.cai }
}
