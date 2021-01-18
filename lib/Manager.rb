require 'pry'
require './Employee.rb'

class Manager
    attr_accessor :name, :department, :age, :employees
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age.to_i

        @@all << self
        employees = []
    end
    def self.all
        @@all
    end  
    def employees
        Employee.all.select { 
            |employee| employee.manager_name == self.name
        }
    end
    def hire_employee(name, salary)
        @employees.push(self)
    end
 
end
michael = Manager.new("Michael Scott", "Branch", "46")
jan = Manager.new("Jan Levinson", "Regional", "43")

binding.pry