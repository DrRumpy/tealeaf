num = [1, 2, 3, 4, 5]

num.each do |n|
	puts "The number is => #{n}"
	total = n
end

puts ""
puts "puts The highest number in this array is \#{total}"
puts ""
puts "The puts above will cause the script to break"
puts "because the inner scope variable does not survive"
puts "the completion of the iterator, and does not exist"
puts "in the local scope."