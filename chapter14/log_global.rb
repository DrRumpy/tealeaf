$nest_depth = 0

def log(description, &block)

  puts "Begin #{description}".insert(0, ("\s" * $nest_depth))
  $nest_depth += 1

  result = block.call
  puts result.to_s.insert(0, ("\s" * $nest_depth))
  
  $nest_depth -= 1
  puts "End #{description}".insert(0, ("\s" * $nest_depth))

end

log '1st Level Block...' do 
  log '2nd Level Block...' do
    log '3rd Level Block...' do 
      "You're deep in it now!"
    end
  end
end