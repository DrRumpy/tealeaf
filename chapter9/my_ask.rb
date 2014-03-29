def ask(question, keep)
	while true
		puts question
		reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
		  if keep == true
        if reply == 'yes'
          return true
        elsif reply == 'no'
          return false
        end
      elsif keep = 'false'
        #do not keep answers for these questions
        break
      end
    else
      puts 'Please type "yes" or "no"'
    end
  end
end
        

puts 'Hello, and thanks for...'
puts
ask('Do you like eating tacos?', false)
ask('Do you like eating burritos?', false)
wets_bed = ask('Do you wet the bed?', true)
ask('Do you like eating chimichangas?', false)
ask('Do you like eating sopapillas?', false)
puts 'Just a few more questions...'
ask('Do you like drinking horchata?', false)
ask('Do you like eating flautas?', false)
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed