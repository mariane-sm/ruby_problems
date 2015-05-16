#Given an item, this algorithm returns the index where this item is located
#Complexity is n*logn
#a is the array
#item is the item desired
#start_i is the array initial index
#end_i is the array end index
def binary_search(a, item, start_i=0, end_i=a.size-1)
	if start_i >= end_i
		return nil
	end
	mid = (start_i + end_i) / 2
	if item < a[mid]
		return binary_search(a, item, start_i, mid-1)
	elsif item > a[mid]
		return binary_search(a, item, mid+1, end_i)
	else
		return item
	end
end

a = [10,20,30,40,50,60]
result = binary_search(a,30)
if result == nil
	puts "item not found"
else 
	puts result
end