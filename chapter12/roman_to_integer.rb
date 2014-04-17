roman_numerals = {'m' => 1000,
                  'd' =>  500,
                  'c' =>  100,
                  'l' =>   50,
                  'x' =>   10,
                  'v' =>    5,
                  'i' =>    1}

puts "Please enter a Roman numeral"
while true
	num = gets.chomp
  counter = 0
  num.length.times do |char|
    if roman_numerals.include?(char)
      next
    else
      puts "Please enter a valid Roman numeral"
    end
  end
end
