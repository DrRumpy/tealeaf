while true
	puts 'What do you want to say to Grandma?'
	say = gets.chomp
	
	if say == say.upcase && say.upcase != 'BYE'
		puts 'Grandma says, "NO, NOT SINCE ' + (rand(21) + 1930).to_s + '!'
	elsif say.upcase != 'BYE'
		puts 'Grandma says, "HUH?!  SPEAK UP, SONNY!"'
	end

	if say.upcase == 'BYE'
		break
	end

end