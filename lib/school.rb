class School

  attr_reader :start_time, :hours_in_school_day, :student_names, :add_student_name, :end_time
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def start_time
    @start_time
  end

  def hours_in_school_day
    @hours_in_school_day
  end

  def student_names
    @student_names
  end

  def add_student_name(student_names)
    @student_names << student_names
  end

  def end_time
    '16:00'
  end


end
