require 'pry'
require './Employee.rb'

class Manager
    attr_accessor :name, :department, :age, :employees
    @@all = []
    @@departments =[]
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age.to_i

        @@all << self
        @employees = []
        @@departments << department
    end
    def self.all
        @@all
    end  
    def departments
        @@departments
    end
    def employees
        Employee.all.select { 
            |employee| employee.manager_name == self.name
        }
    end
    def hire_employee(name, salary)
        @employees << Employee.new(name, salary, self.name)
    end
 
end
michael = Manager.new("Michael Scott", "Branch", "46")
jan = Manager.new("Jan Levinson", "Regional", "43")

binding.pry