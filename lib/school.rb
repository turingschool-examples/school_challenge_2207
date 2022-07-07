class School
  attr_reader :start_time, :student_names, :hours_in_school_day
  def initialize(start, hours)
    @start_time = start
    @hours_in_school_day = hours
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    finish_time = @start_time.split(':')[0].to_i + @hours_in_school_day
    "#{finish_time}:00"
  end

  def standard_student_names
    standard = []
    @student_names.each do |name|
      standard << name.capitalize
    end
    standard
  end

  def is_full_time?
    if @hours_in_school_day > 4
      return true
    else
      return false
    end
  end

  def convert_end_time_to_clock_time
    end_hour = self.end_time.split(':')[0].to_i

    if end_hour > 12
      end_hour -= 12
      return "#{end_hour}:00"
    else
      return self.end_time
    end

  end
end
