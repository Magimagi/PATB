op = ["ling", "yi", "er", "san", "si", "wu", "liu", "qi", "ba", "jiu"]
n = 0
s = gets.chomp.split(//)
s.each {|c| n += Integer(c)}
s = n.to_s.split(//)
n = 0
s.each {|c| printf("%s", op[Integer(c)] + ((n += 1) == s.length ? "\n" : " "))}
