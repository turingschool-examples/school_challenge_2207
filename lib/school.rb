class School
    attr_reader :start_time, :hours_in_school_day, :student_names
    def initialize(start_time, hours_in_school_day)
        @start_time = start_time
        @hours_in_school_day = hours_in_school_day
        @student_names = []
    end

    def add_student_name(name)
        @student_names << name
    end

    #How to convert float 16.0 back to string military time
    def end_time
        @start_time.to_f + @hours_in_school_day.to_f
        
    end

    def is_full_time?
        @hours_in_school_day > 4
    end

    def standard_student_names
        @student_names.each do |name|
           @student_names << name.capitalize
        end
        return @student_names
    end
end
