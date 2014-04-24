class Integer
	def to_roman
    number = self
    numeral = ''
    # nested arrays, pushing results into 3rd index of each nested array
    numerals = [['m', 1000],
                ['d',  500],
                ['c',  100],
                ['l',   50],
                ['x',   10],
                ['v',    5],
                ['i',    1]]

    numerals.each do |num|
      # means roman numeral is bigger than number - exclude from result
      if ( number % num[1]) == number
        num.push(0)
      # can be divided into number, must be included in result
      elsif (number % num[1]) > 0
        num.push(number / num[1])
        # reduces number for each interation!
        number = number % num[1]
        # write result to numeral
        numeral.concat(num[0] * num[2])
      # catches 1000, 2000, 3000 and when zero.
      elsif (number % num[1]) == 0
        num.push(number / num[1])
        number = number % num[1]
        numeral.concat(num[0] * num[2])
      end 
    end

    puts 'Old style: ' + numeral.upcase

    numeral = numeral.sub(/dcccc/, "cm") # modern 900
    numeral = numeral.sub(/cccc/, "cd")  # modern 400
    numeral = numeral.sub(/lxxxx/, "xc") # modern 90
    numeral = numeral.sub(/xxxx/, "xl")  # modern 40
    numeral = numeral.sub(/viiii/, "ix") # modern 9
    numeral = numeral.sub(/iiii/, "iv")  # modern 4
    

    'New style: ' + numeral.upcase
  end
end

puts 1000.to_roman
puts 5.to_roman
puts 2949.to_roman