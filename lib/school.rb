class School
    attr_accessor :school1, :school2
    def initialize(school1, school2, start_time = [])
        @school1= school1
        @school2=school2
        @start_time = start_time

    end

    def start_time (start)
        @start_time << start#why is start not linking to line 10? 
    end

    def hours_in_school_day(HRs)

    end

    def student_names(name)
        
    end


end