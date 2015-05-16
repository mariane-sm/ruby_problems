#n*logn
s = "bcdacebe".chars.sort.join
output = {}
s.each_char do |item|
	if output.has_key?(item)
		value = output[item]
		output[item] = value + 1
	else
		output[item] = 1
	end
end
puts output