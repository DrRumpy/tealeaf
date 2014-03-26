puts' How many bottles of beer are on the wall?'
number = gets.chomp.to_i
puts

while true
	if number > 0 && number != 1
		puts number.to_s + ' bottles of beer on the wall,'
		puts number.to_s + ' bottles of beer,'
		puts 'take one down, pass it around,'
		puts (number - 1).to_s + ' bottles of beer on the wall.'
		puts
	elsif number == 1
		puts number.to_s + ' bottle of beer on the wall,'
		puts number.to_s + ' bottle of beer,'
		puts 'take it down, pass it around,'
		puts 'zero bottles of beer on the wall.'
		puts
	elsif number == 0
		puts 'We\'re all out of beer'
		break
	end
	number = number -1
end