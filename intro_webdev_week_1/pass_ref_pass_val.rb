def sort array
	array.shuffle
end

arr = [ 1, 2, 3, 4]
puts sort arr
puts ''
puts arr
puts ''

def sort_mutate array
	array.shuffle!
end

arr = [ 1, 2, 3, 4]
puts sort arr
puts ''
puts arr

puts "The original array is never changed inside the function."
puts "Using a mutator method has not affect, and the variable"
puts "containing the array still points to the value referenced"
puts "outside the function definition."