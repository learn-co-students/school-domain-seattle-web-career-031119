# code here!
require "pry"

class School

  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end


  def add_student(student, grade)
    # check if value in the grade key is nil or not
    if @roster[grade].nil?
      # students = []
      # students << student
      @roster[grade] = [] << student
    else
      # binding.pry
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    sort_by_grade = Hash[@roster.sort]
    sort_by_grade.each do |grade,students|
      students = sort_by_grade[grade].sort
      sorted[grade]=students
    end
    # binding.pry
    sorted
  end

end
