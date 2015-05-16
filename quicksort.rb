=begin
def quicksort(a)
	if a.size > 1
		pivot_i = a.size / 2
		pivot = a[pivot_i]
		a.delete_at(pivot_i) 
		lesser = Array.new
		greater = Array.new
		a.each do |x|
			if x < pivot
				lesser << x
			else
				greater << x
			end
		end
		return quicksort(lesser) + [pivot] + quicksort(greater) 
	else
		return a
	end
end
=end


def quicksort(a, start_i=0, end_i=a.size-1)
if start_i < end_i
	pivot_i = partition(a, start_i, end_i)
	quicksort(a, start_i, pivot_i-1)
	quicksort(a, pivot_i+1, end_i)
end
	return a
end

def partition(a, start_i, end_i)
	x = a[end_i]
	i = start_i-1
	for j in start_i..end_i-1
		if a[j] <= x
		i += 1
		a[i], a[j] = a[j], a[i]
		end
	end
	a[i+1], a[end_i] = a[end_i], a[i+1]
	i+1
end
 
a = [10,30,20,5,40]
#print quicksort(a)
print quicksort(a)