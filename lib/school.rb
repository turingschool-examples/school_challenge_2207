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

  def is_full_time?
    return true if @hours_in_school_day > 4
    false
  end

  def standard_student_names
    standardized = []
    @student_names.each do |name|
      standardized << name.downcase.capitalize
    end
    return standardized
  end

  def convert_end_time_to_clock_time
    convert_to_int = @start_time.split(":")[0].to_i
    end_time_int = convert_to_int + @hours_in_school_day
    if end_time_int > 12
      clock_time = end_time_int - 12
    else
      clock_time = end_time_int
    end
    clock_time.to_s.concat(":00")
  end

end
