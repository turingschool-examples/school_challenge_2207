class School
    attr_reader :hours_in_school_day
    attr_reader :start_time
    attr_reader :student_names
    


    def initialize(start, length, names = [])
        @hours_in_school_day = length
        @start_time = start 
        @student_names = names
        @end_time = nil
    end

    def add_student_name(name)
        @student_names << name
    end

    def end_time
        @end_time = ((@start_time.tr(':', '').to_i) + (@hours_in_school_day * 100)).to_s.insert(-3,':')
        return @end_time
    end

    def is_full_time?
        if @hours_in_school_day > 4
            return true
        else
            return false
        end
    end

    def standard_student_names
        standard_names = []

        @student_names.each do |name|
            standard_names << name.capitalize
        end
        
        return standard_names
    end

end