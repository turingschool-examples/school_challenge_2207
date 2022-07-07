class School
    attr_reader :start_time, :hours_in_school_day, :student_names, :standard_student_names

    def initialize(start_time, hours_in_school_day)
        @start_time = start_time
        @hours_in_school_day = hours_in_school_day
        @student_names = []
        @end_time = []
        @full_time = nil
    end  

    def add_student_name(name)
        @student_names << name
    end 
 
    def end_time
        @end_time = (@start_time.to_i + @hours_in_school_day.to_i).to_s.concat(':00')
    end 

    def full_time
        if @hours_in_school_day > 4
            @full_time = true
        else @full_time = false 
        end 
    end 

    def standard_student_names
        @student_names.each do |name|
            name.capitalize! 
        end 
    end 

    def convert_end_time_to_clock_time
        ((@start_time.to_i + @hours_in_school_day.to_i) - 12).to_s.concat(':00')       
    end 
    

end 
