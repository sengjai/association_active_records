require_relative '../../db/config'

class Teacher < ActiveRecord::Base


	# attr_accessor :first_name, :last_name, :email, :phone 
	validates :phone, uniqueness: true, format: { with: /.*\d{3}.*\d{3}.*\d{4}.*/}


	has_many :student_teachers
	has_many :students, :through => :student_teachers

end