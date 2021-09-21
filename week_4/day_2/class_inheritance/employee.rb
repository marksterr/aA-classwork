class Employee

  attr_reader :name, :title, :salary, :boss

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    self.boss.employees << self unless boss.nil?
  end

  def bonus(multiplier)
    self.salary * multiplier
  end

end