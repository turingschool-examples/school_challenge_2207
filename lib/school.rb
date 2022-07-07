
class School
    attr_reader :start_time, :hours_in_school_day, :student_names, :name 
    def initialize(start_time, hours_in_school_day)
        @start_time = start_time
        @hours_in_school_day = hours_in_school_day
        @student_names = []
        @name = name
    end

    def end_time
        (@start_time.to_i + @hours_in_school_day).to_s + ":00"
    end

    def add_student_name(name)
        @student_names << name.capitalize
    end

    def is_full_time?
        @hours_in_school_day > 4
    end

    def standard_student_names
        @student_names
    end
end
