require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    roster[grade] = [] unless roster.has_key?(grade)
    roster[grade] << student
  end

  def grade(class_grade)
    roster[class_grade]
  end

  def sort
    roster.each do |grade, classs|
      classs.sort!
    end
  end
end
