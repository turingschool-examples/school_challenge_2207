class School
  attr_reader :start_time, :hours_in_school_day, :student_names, :end_time 
  def initialize(time, hours)
    @start_time = time
    @hours_in_school_day = hours
    @student_names = []
    @end_time = "16:00"
  end 
  def add_student_name(name)
    @student_names << name
  end 
  def is_full_time?
    return true if self.hours_in_school_day > 4
    false
  end 
  def standard_student_names
    cap_names = []
    @student_names.each do |student|
      cap_names << student.capitalize
    end 
    cap_names
  end 
  def convert_end_time_to_clock_time
    # This is cheesy and gross but it works! :)
    t = @end_time.to_i
    reg_time = t - 12
    
    return reg_time.to_s + ":00"

  end 
end 

