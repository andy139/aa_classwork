require "byebug"

class Employee

  attr_reader :name, :title, :salary, :boss

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    return salary * multiplier
  end
end

class Manager < Employee

  attr_reader :employees, :salary

  def initialize(name,title,salary,boss)
    super
    
    @employees = []
  end

  def bonus(multiplier)
    return salary * multiplier if employees.empty?

    sum = 0
  
    queue = [employees.first] # Shawna, David
    until queue.empty?
        first = queue.shift # First= Shawna
        queue += first.employees 
        sum += first.salary # Sum = 12,000
    end

    return sum * multiplier

  end

end

Ned = Manager.new("Ned", "Founder", 1000000, nil)
Darren = Manager.new("Darren", "TA Manager", 78000, "Ned")
Shawna = Manager.new("Shawna", "TA", 12000, "Darren")
David = Manager.new("David", "TA", 10000, "Darren")

Ned.employees << Darren
Darren.employees << Shawna
Darren.employees << David
p Ned.bonus(1)
p David.bonus(3)
p Darren.bonus(4)