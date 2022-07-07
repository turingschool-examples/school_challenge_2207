class School
    attr_reader :start_time, :hours_in_school_day, :student_names

    def initialize(start_time, hours_in_school_day)
        @start_time = start_time
        @hours_in_school_day = hours_in_school_day
        @student_names = []
    end

    def add_student_name(student)
        @student_names << student
    end

    def time_int
        @start_time.to_i + @hours_in_school_day
    end

    def time_str
        "#{time_int}:00"
    end

    def end_time
        time_int
        time_str
    end

    def is_full_time?
        return true if hours_in_school_day > 4
    end

    def standard_student_names
        capital_names = []

        @student_names.each do |student|
            capital_names << student.capitalize
        end
        
        return capital_names
    end
end
