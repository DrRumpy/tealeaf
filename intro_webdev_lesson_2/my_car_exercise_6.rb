class Person
  attr_accessor :name
  def initialize(name)
    self.name = name
  end
end

bob = Person.new("Steve")
puts bob.name
bob.name = "Bob"
puts bob.name

# In the original code arrt_reader only creates a getter and not s setter instance method. So when
# the code is run it fails because the setter method is missing, which is what the error message
# is stating. By changing attr_reader to attr_accessor a setter method is created. Additionally, I
# changed @name to self.name to follow best practice of not accessing the instance variable directly.
# The two puts statements were just so I coud see the transition of the @name variable from Steve to
# Bob.
