require "set"

class Person
	attr_reader :key
	def initialize(key)
		@key = key
	end
end

#ac be d
a = Person.new(10)
b = Person.new(30)
c = Person.new(10)
d = Person.new(20)
e = Person.new(30)

ar = [a,b,c,d,e]
output = {}
ar.each do |person|
	if output.has_key?(person.key)
		current_set = output[person.key]
		current_set << person
		output[person.key] = current_set
	else
		output[person.key] = [person].to_set
	end
end

output.each do |key, value|
	print key.to_s + "-->"
	value.each do |person|
		print person.key
	end
	puts
end 


