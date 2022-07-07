class School
  attr_reader :start_time, :hours_in_school_day, :student_names, :end_time

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_time = ((@start_time.delete(":00").to_i + @hours_in_school_day) % 24).to_s + ":00"
  end

  def add_student_name(name)
    @student_names << name
  end

  def is_full_time?
    if @hours_in_school_day > 4
      return true
    else return false
    end
  end

  def standard_student_names
    @student_names.each do |name|
      name.capitalize 
    end
  end

end
