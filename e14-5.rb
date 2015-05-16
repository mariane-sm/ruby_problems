events = [[1,5],[6,10],[11,13],[14,15],[2,7],[8,9],[12,15],[4,5],[9,17]]
output = {}

events.each do |event|
	(event[0]..event[1]).each do |day|
		if output.has_key?(day)
			value = output[day]
			output[day] = value + 1
		else
			output[day] = 1
		end
	end
end

max_events = 0
output.each do |day| 
	if day[1] > max_events
		max_events = day[1]
	end 
end

puts max_events