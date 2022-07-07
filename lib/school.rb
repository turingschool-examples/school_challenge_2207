class School

attr_reader :start_time, :hours_in_school_day, :student_names, :standard_student_name
  def initialize (start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @standard_student_name = []
  end

def add_student_name(name)
  @student_names << name
end

def end_time
  @end_time = @start_time.to_i + @hours_in_school_day.to_i
  @end_time.to_s + ":00"
end

def is_full_time?
   @hours_in_school_day > 4
end

def capitalize_names
  @student_names.each do |name|
    @standard_student_name << name.capitalize
  end
end

end
