class Employee
  attr_accessor :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def raise_salary(amount)
    @salary += amount
  end


  def to_s
    "Employee: #{@name} - Salary: #{@salary}"
  end
end

e = Employee.new("Gautham", 30000)

e.raise_salary(5000)

puts e