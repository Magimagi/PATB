class Student
	attr_accessor :mark
	attr_accessor :name
	attr_accessor :no
	def initialize(name, no, mark)
		@name = name
		@no = no
		@mark = mark
	end
end
n = Integer(gets.chomp())
a = []
n.times do
	s = gets.chomp().split(" ")
	a << Student.new(s[0], s[1], s[2])
end
a.sort_by! {|x| x.mark.to_i}
puts "#{a[n - 1].name} #{a[n - 1].no}"
puts "#{a[0].name} #{a[0].no}"
