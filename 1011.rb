n = gets.chomp.to_i
n.times { |i|
	input = gets.chomp.split(" ")
	print "Case ##{i + 1}: ", (input[0].to_i + input[1].to_i > input[2].to_i ? "true" : "false"), "\n"
}
