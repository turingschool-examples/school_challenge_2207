class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    convert_to_int = @start_time.split(":")[0].to_i
    add_hours = convert_to_int + @hours_in_school_day
    add_hours.to_s.concat(":00")
  end

end
