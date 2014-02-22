nums = gets.chomp.split(" ");
ans = []
0.step(nums.length - 1, 2) { |i|
	a = nums[i].to_i * nums[i + 1].to_i
	ans << a << nums[i + 1].to_i - 1 if a != 0
}
puts ans.join(" ") if ans.length != 0
puts "0 0" if ans.length == 0
