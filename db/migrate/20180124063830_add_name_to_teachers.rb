class AddNameToTeachers < ActiveRecord::Migration[5.1]
  def change
    add_index :teachers, :teacher_no, unique: true    
  end
end
