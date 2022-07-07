class School
attr_reader :start_time, :hours_in_school_day
attr_accessor :student_names, :end_as_int, :converted_time

def initialize(start_time, hours_in_school_day)
  @start_time = start_time
  @hours_in_school_day = hours_in_school_day
  @student_names = []
  @end_as_int = 0
  @converted_time = 0
end

def add_student_name(name)
  @student_names << name
end

def end_time
  @end_as_int = start_time.to_i + @hours_in_school_day
  end_as_int.to_s
  "#{end_as_int}:00"
end

def is_full_time?
  self.end_time
  if end_as_int > 4
    true
  else
    false
  end
end

def standard_student_names
  student_names.map {|name| name.capitalize}
end

def convert_end_time_to_clock_time
  self.end_time
    if end_as_int > 12
    converted_time = (end_as_int % 12).to_s
    "#{converted_time}:00"
  end
end


end
