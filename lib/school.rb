class School
    attr_accessor :start_time, :hours_in_school_day, :student_names, :end_time

    def initialize(start_time, hours_in_school_day)
        @start_time = start_time
        @hours_in_school_day = hours_in_school_day
        @student_names = []
        @standard_names = []
        @end_time = "#{(@start_time.to_i + @hours_in_school_day).to_s}:00"
    end

    def add_student_name(student)
        @student_names << student
    end

    def is_full_time?
        if @hours_in_school_day > 4
            return true
        else
            return false
        end
    end

    def standard_student_names
        @student_names.each do |student|
            @standard_names << student.capitalize
        end
        return @standard_names
    end

    def convert_end_time_to_clock_time
        twelve_hour_end_time = Time.strptime("#{@end_time}","%H:%M").strftime("%I:%M")
        if twelve_hour_end_time[0] == "0"
            twelve_hour_end_time.slice!(0)
        end

        return twelve_hour_end_time
    end
end
