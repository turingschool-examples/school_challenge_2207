class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student)
    @student_names << student
  end

  def end_time
    new_end_hr = @start_time.to_i + @hours_in_school_day
    (new_end_hr.to_s % 24).concat ":00"
  end

  def is_full_time?
    4 < hours_in_school_day
  end

  def standard_student_names
    @student_names.map { |student| student.capitalize }
  end

  def convert_end_time_to_clock_time
    new_end_time_12hr = end_time.to_i % 12
    new_end_time_12hr.to_s.concat ":00"
  end
end
