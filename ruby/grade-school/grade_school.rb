class GradeSchool
  def initialize
    @hash = Hash.new { |hash, grade| hash[grade] = [] }
  end

  def students(grade)
    @hash[grade].sort
  end

  def add(name, grade)
    @hash[grade] << name
  end

  def students_by_grade
    array = []
    @hash.each{|key,value|
      array <<  {grade: key, students: value.sort}
    }
    array.sort_by{|x| x[:grade]}

  end
end

module BookKeeping
  VERSION = 3
end

