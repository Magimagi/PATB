line = gets.chomp.split(" ")
(line.length - 1).downto(0) { |i| print i == 0 ? "#{line[i]}\n" : "#{line[i]} "}
