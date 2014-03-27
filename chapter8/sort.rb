puts 'Type as many words as you want. One word per line, then press <Enter>'

words = []
while true
  word = gets.chomp
  if word != ''
    words.push(word)
  elsif word == ''
    break
  end
end

sorted = words.sort

sorted.each do |w|
	puts w
end