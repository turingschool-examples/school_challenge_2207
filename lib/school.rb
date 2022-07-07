class School
    attr_reader :start_time, :hours_in_school_day, :student_names
    def initialize(start_time, hours_in_school_day)
        @hours_in_school_day = hours_in_school_day
        @start_time = start_time
        @student_names = []
    end

    def add_student_name(student_name)
        @student_names << student_name.capitalize
    end

    def end_time
        if (start_time.to_i + hours_in_school_day) > 24
            (start_time.to_i + hours_in_school_day) - 24
        else
            start_time.to_i + hours_in_school_day
        end
        .to_s + ":00"

    end

    def is_full_time?
        @hours_in_school_day > 4
    end

    def convert_end_time_to_clock_time
        if 24 >= end_time.to_i && end_time.to_i > 12
            end_time.to_i - 12
        else 12 <= end_time 
            end_time.to_i
        end
        .to_s + ":00"    
    end
end
