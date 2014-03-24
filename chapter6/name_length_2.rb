puts 'Please type your first name'
first = gets.chomp
puts 'Please type your middle name'
middle = gets.chomp
puts 'Please type your last name'
last = gets.chomp
total = first.length + middle.length + last.length
puts 'Did you know your first, middle, and last name is'
puts total.to_s + ' characters long?'