class School
attr_reader :start_time, :hours_in_school_day, :student_names 

    def initialize(start_time, hours_in_school_day)
        @start_time = start_time
        @hours_in_school_day = hours_in_school_day
        @student_names = []
        
    end

    def add_student_name(student_name)

        student_names = []
        @student_names.each do |student_name|
            student_names << add_student_name
        end
        return student_names
    end
        
    def end_time
        @end_time = start_time.to_i + 7
    end
end
