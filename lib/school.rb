

class School
  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}
    @roster.each {|key, value|
      new_hash[key] = value.sort
    }
    new_hash
  end
end
