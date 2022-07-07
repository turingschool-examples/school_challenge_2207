class School

attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)

  @start_time = start_time
  @hours_in_school_day = hours_in_school_day
  @student_names = []
end

def add_student_name (student_names)
  @student_names << student_names
end



def end_time
  if @start_time.to_i < 12
    (@start_time.to_i + @hours_in_school_day).to_s
  elsif @start_time.to_i > 12
  ((@start_time.to_i - 12)+ @hours_in_school_day).to_s
  end
end

def capitalized_student_names
  cap_names = []
end


def standard_student_names
  @student_names.each do |student|
    cap_names << student.name.capitalize
end

  cap_names
end


end
