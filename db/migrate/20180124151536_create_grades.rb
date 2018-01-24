class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.integer :students_id
      t.string :subjects_id
      t.string :grade

      t.timestamps
    end
  end
end
