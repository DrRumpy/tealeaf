puts' How many bottles of beer are on the wall?'
number = gets.chomp

puts number + ' bottles of beer on the wall'
puts number + ' bottles of beer'
puts 'take one down, pass it around'
new_num = number.to_i - 1
puts new_num.to_s + ' bottles of beer on the wall'