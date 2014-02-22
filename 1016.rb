a, da, b, db = gets.chomp.split(" ")
a = a.split(//).map {|s| da if s == da}
b = b.split(//).map {|s| db if s == db}
a.delete(nil); b.delete(nil)
a = a.map{|s| s.to_i}; b = b.map{|s| s.to_i}
a = a.join("").to_i; b = b.join("").to_i
puts a + b
