class Student
    attr_reader :grade

    def initialize(name,grade)  
        @name = name
        @grade = grade
      end  

    def better_grade_than?(other_student)
        @grade>other_student.grade
    end

    private
    attr_writer :name, :grade
end