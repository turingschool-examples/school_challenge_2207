class School
    attr_reader :hours_in_school_day, :start_time, :student_names
    def initialize(start_time, hours_in_school_day)
        @hours_in_school_day = hours_in_school_day
        @start_time = start_time
        @student_names = []
    end

    def add_student_name(student)
        @student_names << student
    end

    def end_time
        @hours_in_school_day.to_i + @start_time
    end

    def is_full_time?
        if @hours_in_school_day > 4
            return true
        else
            return false
        end
    end

    def standard_student_names
        cap_name = []

        @student_names each do |student|
            cap_name << student.name.capitalize
        end
    end
end
