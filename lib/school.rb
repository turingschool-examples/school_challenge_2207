class School
    attr_accessor :school1, :school2
    def initialize(school1, school2)
        @school1= school1
        @school2=school2
        @start_time = []

    end

    def start_time (start)
        @start_time << start
    end

    def hours_in_school_day(HRs)

    end


end