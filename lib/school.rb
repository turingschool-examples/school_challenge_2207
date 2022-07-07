class School
  attr_reader :hours_in_school_day, :start_time, :student_names, :end_time, :is_full_time

  def initialize(start_time, hours_in_school_day)

    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_time = ''
    @is_full_time = []

  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    @start_time + @hours_in_school_day.to_s
  end

  def is_full_time
    if
      @hours_in_school_day >= 4
      then @is_full_time = true
    else @is_full_time = false
    end
  end

  def standard_student_names
    @student_names.capitalize
  end

end
