a = []
inp = gets.chomp.split.map &:to_i
inp.each_with_index { |x, i| x.times { a << i } }
if a[0] == 0
    a.each_with_index do |x, i|
        if x != 0
            print x
            a.delete_at i
            break
        end
    end
end
puts a.join

