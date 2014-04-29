def per_hour &block
  hours = Time.new.hour

  if hours > 12
    hours -= 12

    hours.times do
      block.call
    end
  else
    hours.times do
      block.call
    end
  end
end

per_hour do 
  puts 'DONG!'
end