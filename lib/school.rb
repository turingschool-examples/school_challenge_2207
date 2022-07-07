class School
    attr_reader :hours_in_school_day
    attr_reader :start_time
    attr_reader :student_names


    def initialize(start, length, names = [])
        @hours_in_school_day = length
        @start_time = start 
        @student_names = names
    end
end