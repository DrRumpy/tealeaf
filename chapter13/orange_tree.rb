class OrangeTree

  def initialize
    @height = 1     # in feet
    @years_old = 1  # starting age
    @expires = 5   # when tree will croak
    @oranges = 0    # number of oranges on the tree
  end

  def show_height
    if @height == 1
      puts "The Orange tree is #{@height} foot tall"
    else
      puts "The Orange tree is #{@height} feet tall"
    end
  end

  def one_year_passes
    grow
    fruit
    kicks_the_bucket
  end

  def count_oranges
    if @oranges == 0
      puts "There are no Oranges on the tree."
    else
      puts "There are #{@oranges} Oranges on the tree."
    end
  end

  def pick_an_orange
    # return string saying how tasty the orange was
    # reduce orange count by one
    if @oranges == 0
      puts "There are no Oranges on the tree to pick"
    else
      puts "You pick a ripe Orange and gobble it down."
      puts "It was delicious!"
      @oranges -= 1
      puts "Now there are #{@oranges} on the tree."
    end
  end


  private

  def grow
    @height += 1
    @years_old += 1
  end

  def fruit
    @oranges = 0
    if @years_old > 2
      @oranges = @years_old + ( 1 + rand(10))
    end
  end

  def kicks_the_bucket
    if @years_old == @expires
      puts "The Orange tree has died!"
      exit
    end
  end

end

bob = OrangeTree.new
bob.show_height
bob.count_oranges
bob.pick_an_orange
bob.one_year_passes
bob.one_year_passes
bob.show_height
bob.count_oranges
bob.pick_an_orange
bob.one_year_passes
bob.one_year_passes