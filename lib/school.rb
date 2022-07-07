class School
    attr_reader :start_time
    attr_reader :hours_in_school_day
    attr_reader :student_names
    attr_reader :end_time
    attr_reader :end_time_integer
    attr_reader :standard_student_names

  

    def initialize(start_time, hours_in_school_day)
        @start_time = start_time
        @hours_in_school_day = hours_in_school_day
        @student_names = []
        @end_time_integer = start_time.to_i + hours_in_school_day
        @end_time = end_time_integer.to_s + ":00"
        @standard_student_names = student_names.map(&:capitalize)
    end

    def add_student_name(student_name)
        student_names << student_name
    end

    def is_full_time?
        if hours_in_school_day > 4 
            p true
        else
            p false
        end
    end
end

