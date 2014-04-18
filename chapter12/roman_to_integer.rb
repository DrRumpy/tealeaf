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

def numeral_value num_arr, roman_numerals, total
  # pop off the last array element
  num_buff = num_arr.pop

  # if the popped element and the new last element match
  # a key in roman_numerals, then it's going to be a 4 or
  # 9 based number value.
  if num_arr.length == 0 && roman_numerals.include?(num_buff)
    total += roman_numerals[num_buff]
    num_buff = ''
  elsif roman_numerals.include?(num_arr[-1] + num_buff)
    total += roman_numerals[num_arr[-1] + num_buff]
    num_arr.pop
    num_buff = ''
  elsif roman_numerals.include?(num_buff)
    total += roman_numerals[num_buff]
    num_buff = ''
  end

  if num_arr.length == 0
    return total
  end

  numeral_value(num_arr, roman_numerals, total)
end

count = 0
while true
  puts "Please enter a Roman numeral"
  num_arr = gets.chomp.scan(/\w/)
  num_arr.each do |num|
    if roman_numerals.include?(num)
      count += 1
    else
      puts "Please enter a valid Roman numeral"
      break
    end
  end

  if count == num_arr.length
    puts numeral_value(num_arr, roman_numerals, 0)
    break
  end
end
