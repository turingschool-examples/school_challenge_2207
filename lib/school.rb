class School
attr_reader :start_time, :hours_in_school_day
attr_accessor :student_names, :end_as_float

def initialize(start_time, hours_in_school_day)
  @start_time = start_time
  @hours_in_school_day = hours_in_school_day
  @student_names = []
  @end_as_float = 0
end

def add_student_name(name)
  @student_names << name
end

def end_time
  @end_as_float = start_time.to_f + @hours_in_school_day
  end_as_float.to_s
end

def is_full_time?
  self.end_time
  if end_as_float > 4
    true
  else
    false
  end
end

def standard_student_names
  student_names.map {|name| name.capitalize}
end


end
