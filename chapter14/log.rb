def log(description, &block)
	puts "Begin #{description}"
  block.call
  puts "End #{description}"
end

log '1st Level Block...' do 
  log '2nd Level Block...' do
      puts "Begin 3rd Level Block..."
      puts "You're deep in it now!"
      puts "End 3rd Level Block..."
  end
end