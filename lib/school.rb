class School
  attr_reader :start_time, :hours_in_school_day, :student_names, :standard_student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @standard_student_names = []
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
    end_time = start_time.to_i + hours_in_school_day
    end_time.to_s
    "#{end_time.to_s}:00"
  end

  def is_full_time?
    if hours_in_school_day >= 4
      true
    end
  end

  def standard_student_names
    student_names.each do |student_name|
      @standard_student_names << student_name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    clock_time = end_time.to_i - 12
    clock_time.to_s
    "#{clock_time.to_s}:00"
  end
end
