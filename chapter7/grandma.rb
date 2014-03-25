
puts 'What do you want to say to Grandma?'
byes = 0
while true
	say = gets.chomp
	if say == 'BYE'
		byes = byes + 1
	else
		byes = 0
	end

	if byes >= 3
		puts 'Bye Sonny! See you later'
		break
	end

	if say == say.upcase
		puts 'Grandma says, "NO, NOT SINCE ' + (rand(21) + 1930).to_s + '!'
	else
		puts 'Grandma says, "HUH?!  SPEAK UP, SONNY!"'
	end
end