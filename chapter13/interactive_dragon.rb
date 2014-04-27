class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly     = 10 # Baby is full to start
    @stuff_in_intestine = 0 # Far away from number 2

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}"
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but he wakes when you stop.'
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving!  In desperation , he ate YOU!"
      exit
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops!  #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @sleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} does the potty dance"
    end
  end

end

puts "What you like to call you new baby Dragon?"
name = gets.chomp
baby = Dragon.new "#{name}"
puts

puts "What you you like to do with #{name}, your Baby Dragon?"
puts
puts "1) Feed #{name} some Dragon kibble."
puts "2) Take #{name} for a walk."
puts "3) Tuck #{name} into bed."
puts "4) Toss #{name} into the air."
puts "5) Rock #{name} in your arms for a nap."
puts "6) Go do something else."
puts "Press the appropriate number for what you would like to"
puts "do with #{name}."
puts

while true
  choice = gets.chomp
  if choice == '1'
    baby.feed
  elsif choice == '2'
    baby.walk
  elsif choice == '3'
    baby.put_to_bed
  elsif choice == '4'
    baby.toss
  elsif choice == '5'
    baby.rock
  elsif choice == '6'
    break
  end
end



=begin
baby.feed
baby.toss
baby.walk
baby.put_to_bed
baby.rock
baby.put_to_bed
baby.put_to_bed
baby.put_to_bed
baby.put_to_bed
=end