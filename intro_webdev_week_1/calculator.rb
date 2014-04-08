#1 string interpolation vs string concatenation
#2 extract repetitive logic to methods - DRY!!!!
#3 keep track of variable types (class)
#4 varialbe scope defined by do...end; outer scope variables accessible to inner scope,
#but not vice versa
#5 pass by value vrs pass by reference. if object was mutated by method, out object
# can be changed

require 'pry'
def say msg
	puts "=> #{msg}"
end

say "What's the first number?"
num1 = gets.chomp

say "What's the second number?"
num2 = gets.chomp

say "1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp

binding.pry

if operator == '1'
  result = num1.to_i + num2.to_i
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_i * num2.to_i
elsif operator == '4'
  result = num1.to_f / num2.to_f
end
say "Result is #{result}"
