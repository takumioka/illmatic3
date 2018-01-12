class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.integer :student_no
      t.integer :subject_no
      t.string :grade

      t.timestamps
    end
  end
end
