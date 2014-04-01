def ask_recursively question
	puts question
	reply =  gets.chomp.downcase

	if reply == 'yes'
		return true
	elsif reply == 'no'
		return false
	else
		puts 'Please answer "yes" or "no".'
		ask_recursively question
	end
end

ask_recursively 'Do you wet the bed?'