# code here!
# require 'pry'

class School

    def initialize(school_name)
        @school_name = school_name
        @roster = { }
    end

    def roster
        @roster 
    end

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = [ ]
            @roster[grade] << name
        end

        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do | key, value |
            @roster[key] = @roster[key].sort
        end

        @roster
    end
        
end

school = School.new("Bayside High School")

