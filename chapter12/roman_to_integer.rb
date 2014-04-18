roman_numerals = {'m'  => 1000,
                  'cm' =>  900,
                  'd'  =>  500,
                  'cd' =>  400,
                  'c'  =>  100,
                  'xc' =>   90,
                  'l'  =>   50,
                  'xl' =>   40,
                  'x'  =>   10,
                  'ix' =>    9,
                  'v'  =>    5,
                  'iv' =>    4,
                  'i'  =>    1}

def numeral_value num_arr, roman_numerals
  total = 0

  num_arr.each do |num|
    total += roman_numerals[num] 
  end

  total
end

def remove_fours_nines num_arr, roman_numerals
# identify and separate 4's and 9's from roman 
# numeral entered by user.
num_str = num_arr.to_s
  


while true
  count = 0
  puts "Please enter a Roman numeral"
  num_arr = gets.chomp.scan(/\w/)
  num_arr.each do |char|
    if roman_numerals.include?(char)
      count += 1
    else
      break
    end
  end
  
  if count == num_arr.length
    puts numeral_value num_arr, roman_numerals
    break
  end
end