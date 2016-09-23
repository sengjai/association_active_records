require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
	validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
	validates :age, numericality: { greater_than: 4}
	validates :phone, format: { with: /.*\d{3}.*\d{3}.*\d{4}.*/}

	def name
		return "#{self[:first_name]} #{self[:last_name]}"
	end

  def age
    #self.where('id = ?', pk).first
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  end

end