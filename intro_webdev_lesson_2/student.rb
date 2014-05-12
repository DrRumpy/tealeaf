class Student
	attr_accessor :name
	attr_writer :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

	def better_grade_than?(name)
    if self.grade < name.grade
      return true
    else
      return false
    end
  end

  protected

  def grade
    @grade
  end

end

joe = Student.new("Joe", "A")
bob = Student.new("Bob", "B")
puts "Well done!" if joe.better_grade_than?(bob)