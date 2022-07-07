class School
    attr_reader :hours_in_school_day, :start_time, :student_names
    def initialize(start_time, hours_in_school)
        @hours_in_school_day = hours_in_school
        @start_time = start_time
        @student_names = []
    end
end
