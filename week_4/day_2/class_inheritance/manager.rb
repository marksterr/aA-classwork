require_relative "employee"

class Manager < Employee

  def initialize(name, title, salary, boss)
    super
    @employees = []
  end

  def bonus(multiplier)
    total = 0
    @employees.each do |employee|
      total += employee.salary
    end
    total * multiplier
  end

end