a = Array.new(10) { 0 }
gets.chomp.split(//).each { |x| a[x.to_i] += 1 }
a.each_with_index { |x, i| puts "#{i}:#{x}" if x != 0 }
