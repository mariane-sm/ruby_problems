# Using prohibited third array
A = [10, 20, 30, 40] #size m
B = [15, 20, 25, 30, 35] #size n
C = []
B.each_with_index do |itemB, index|
	i = index
	while i < A.size and itemB > A[i] 
		C << A[i]
		i = i + 1
	end
	C << itemB
end
print C
