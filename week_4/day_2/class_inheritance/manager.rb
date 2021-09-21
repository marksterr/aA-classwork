require_relative "employee"

class Manager < Employee

  attr_accessor :employees

  def initialize(name, title, salary, boss)
    super
    @employees = []
  end

  def bonus(multiplier)
    total_salary * multiplier
  end

  def total_salary
    total = 0
    self.employees.each do |employee|
      if employee.is_a?(Manager)
        total += employee.salary + employee.total_salary
      else
        total += employee.salary
      end
    end
    total
  end

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000