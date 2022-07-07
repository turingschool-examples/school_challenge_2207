class School
attr_accessor :hours_in_school_day,
              :start_time,
              :student_names,
              :standard_student_names,
              :final_end_time

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @standard_student_names = []
  end

  def add_student_name(student_name)
    student_names << student_name
    standard_student_names << student_name.capitalize
  end

  def end_time
    @final_end_time = start_time.to_i + hours_in_school_day
    "#{final_end_time}:00"
  end

  def is_full_time?
    if hours_in_school_day > 4
      true
    else
      false
    end
  end

  def convert_end_time_to_clock_time
  end_time
    if final_end_time > 12
      converted_end_time = @final_end_time - 12
    else
      converted_end_time = @final_end_time
    end

    "#{converted_end_time}:00"
  end

end
