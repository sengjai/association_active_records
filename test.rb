require_relative 'app/models/teacher'
require_relative 'app/models/student'
require_relative 'app/models/student'
require_relative 'app/models/student_teacher'

#p Student.last

# 9.times do

#   	Teacher.create("Ee","Soon Seng")
	
# end

# all_students = Student.all

# all_students.each do |x|
# 	x.update(teacher_id: rand(1..9))
# end

#p all_students

10.times do
	StudentTeacher.create(teacher_id: rand(1..9),student_id: rand(1..55))
end


