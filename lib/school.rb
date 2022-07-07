class School
   
   attr_reader :start_time, :hours_in_school_day
    
   def initalize(start, hours, name)
        @start_time = start
        @hours_in_school_day = hours
        @student_names = name
    
    end
end
