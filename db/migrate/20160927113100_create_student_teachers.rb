require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateStudentTeachers < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :student_teachers, id:false do |t|

      # add columns that you would need for this table
      t.belongs_to :teacher, index: true
      t.belongs_to :student, index: true
    end
  end
end
