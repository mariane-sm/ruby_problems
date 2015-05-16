#Slowest solution
require 'set'
#O(m*n)
#interseccion: [20 30]
A = [10, 20, 30, 40] #size m
B = [15, 20, 25, 30, 35] #size n
s = Set.new
A.each do |itemA|
	B.each do |itemB|
		if itemA == itemB
			s << itemA
		end
	end
end
puts s.to_a

