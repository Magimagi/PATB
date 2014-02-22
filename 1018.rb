map = [[0, 1, -1], [-1, 0, 1], [1, -1, 0]]
all = ["B", "C", "J"]
change = []
change["C".ord] = 0; change["J".ord] = 1; change["B".ord] = 2
arecord = []; brecord = []
arecord["C".ord] = arecord["J".ord] = arecord["B".ord] = 0
brecord["C".ord] = brecord["J".ord] = brecord["B".ord] = 0
n = gets.chomp.to_i
awin = ap = alose = 0
bwin = bp = blose = 0
n.times do
	a, b = gets.chomp.split(" ")
	ta = change[a.ord]; tb = change[b.ord]
	if map[ta][tb] == 1
		awin += 1; blose += 1
		arecord[a.ord] += 1
	elsif map[ta][tb] == 0
		ap += 1; bp += 1
	else
		alose += 1; bwin += 1
		brecord[b.ord] += 1
	end
end
print awin, " ", ap, " ", alose, "\n"
print bwin, " ", bp, " ", blose, "\n"
max = -1; choose = "B"
all.each {|x|
	if arecord[x.ord] > max
		max = arecord[x.ord]
		choose = x
	end
}
print choose, " "
max = -1; choose = "B"
all.each {|x|
	if brecord[x.ord] > max
		max = brecord[x.ord]
		choose = x
	end
}
puts choose
