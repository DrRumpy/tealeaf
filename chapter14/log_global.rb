def log(description, &block)
  $nest_depth = 0

  puts "Begin #{description}".insert(0, ("\s" * $nest_depth))
  $nest_depth += 1
  block.call
  puts "Begin #{description}".insert(0, ("\s" * $nest_depth))
  $nest_depth -= 1

end

log '1st Level Block...' do 
  log '2nd Level Block...' do
      puts "Begin 3rd Level Block..."
      puts "You're deep in it now!"
      puts "End 3rd Level Block..."
  end
end