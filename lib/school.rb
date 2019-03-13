# code here!
require 'pry'
class School
  attr_reader :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade].nil? ? @roster[grade] = [name] : @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = @roster.reduce({}) {|sorted_roster, (k, v)|
      sorted_roster[k] = v.sort
      binding.pry
      sorted_roster
    }

  end

end
