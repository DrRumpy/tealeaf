# the probem is that the "hi" instance method in the Person class is private, and it should
# be protected instead. That way it can be called internally by other Person instance methods
# without producing an error.
#
# Also, there needs to be a public instand method that calls "hi" internally, because a protected
# method is considered private when called externally.
#
# I created a new protected instance method called "hello" and made "hi" public. That way, in the
# exampe of "bob.hi" my code will call the protected "hello" method internally, and still work.

class Person
	attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def hi
  	self.hello
  end

  protected

  def hello
    "Saying 'Hi!' from a protected instance method"
  end

end

bob = Person.new("Bob")
puts bob.hi