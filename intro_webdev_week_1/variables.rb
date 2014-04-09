puts "What color is the sky?"
puts "Pssssst...don't answer Blue"
answer = gets.chomp

while true
	if answer == "Blue" || answer == "blue"
		puts "Yes, it is, but I told you not to type Blue!"
		break
	else
    answer = "Blue"
		puts "Wrong, wrong, wrong"
    puts "It's #{answer}"
    break
	end
end

puts "Some of the most lovely sky colors are at sunset. When you"
puts "can see amazing shades of #{answer.downcase}."


answer = "Pink"

puts "Along with many variations of #{answer.swapcase!}"