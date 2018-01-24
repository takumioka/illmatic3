class AddNameToStudents < ActiveRecord::Migration[5.1]
  def change
    add_index :students, :student_no, unique: true
  end
end
