require 'pry'
require './Manager.rb'
class Employee
   attr_accessor :name, :salary, :manager_name
    @@all = []
   def initialize(name, salary, manager_name)
        @name = name
        @salary = salary.to_i
        @manager_name = manager_name

        @@all << self
    end
    def self.all
        @@all
    end

    # def paid_over(num)
    #     @@all.map do |name|
    #         if name[:salary] > num
    #             p name
    #         end
    #     end
    # end
end
pam = Employee.new("Pam Beasley", "30,000", "Michael Scott")
jim = Employee.new("Jim Halpert", "36,000", "Michael Scott")